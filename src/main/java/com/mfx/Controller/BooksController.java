package com.mfx.Controller;

import java.io.IOException;
import java.text.DateFormat;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
//import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.mfx.Entities.Books;
import com.mfx.Entities.GiveBooks;
import com.mfx.Services.*;
import net.sf.json.JSONArray;
/*@RequestMapping 注解可以在控制器类的级别和/或其中的方法的级别上使用。
  在类的级别上的注解会将一个特定请求或者请求模式映射到一个控制器之上。
  之后你还可以另外添加方法级别的注解来进一步指定到处理方法的映射关系。
  比如这里是对和books相关的所有请求，如果是和其他相关的请求时，需要重新写
  一个Controller类，在类上重新
  */
@Controller
@RequestMapping("/books")
public class BooksController {
    
    @Resource
   BookService bookService;//没有用new创建对象，是因为是由spring容器管理的
    /*@Autowired是默认按照类型装配的 @Resource默认是按照名称装配的*/
    /*
     * 产品列表与分页Action
     */
    @RequestMapping("/insert")
    public String list(Model model,@ModelAttribute("entity") @Valid Books entity,BindingResult bindingResult) throws IOException{
    	/*1.Valid注解用于校验
    	 *2.@ModelAttribute运用在参数上，会将客户端传递过来的参数按名称注入到指定对象中，并且会将这个对象自动加入ModelMap中，便于View层使用*/
    	//System.out.println("++++++"+entity.getWeight());
    	if(entity.getWeight()==null||entity.getWeight().equals("")){
    		entity.setWeight("未填");
    	}
    	System.out.println("+++========");
    	DateFormat mediumDateFormat = DateFormat.getDateTimeInstance
	       		(DateFormat.MEDIUM,DateFormat.MEDIUM); 
		Date date=new Date();
		entity.setDate(mediumDateFormat.format(date));
    	bookService.insert(entity);
    	//response .getWriter().print("<script language='javascript'>记账成功</script>");
        return check(model);//必须写成这样，不然访问不到 
    }
    @RequestMapping("/check")
    public String check(Model model){
    	List<Books> list=bookService.selectAll();
    	model.addAttribute("books",list);
    	System.out.println(list);
    	return "books/check";
    }
    /*测试json数据
     * 1.该方法使用@ResponseBody注解标注，其作用是将反回的数据格式封装成json数据格式
     * 2.@RequestParam用于参数绑定
     * 3.@RequestMapping("/JsonTest")
		　　public void JsonTest(HttpServletResponse response){
		      List<Books> list=bookService.selectAll();
		　　　　response.getWriter().write(JSONArray.fromObject(list).toString());
		　　}
     * */
    @RequestMapping("/JsonTest")
    @ResponseBody
    public List<Books> JsonTest(Model model,@RequestParam("value") int value){
    	System.out.println("ajax 请求"+value);
    	List<Books> list=bookService.selectAll();
    	//model.addAttribute("books",list);
    	//System.out.println(list);
    	return list;
    }
    @RequestMapping("/JsonTest2")
	public void JsonTest(HttpServletResponse response) throws IOException{
	   List<Books> list=bookService.selectAll();
	   response.getWriter().write(JSONArray.fromObject(list).toString());
    }
    
    @RequestMapping("/search")
    public String search(Model model,HttpServletRequest request){
    	String keyString=request.getParameter("check");
    	int howCheck=Integer.parseInt(request.getParameter("howcheck"));
    	System.out.println("++++++"+keyString+howCheck);
    	if(howCheck==1){
    		List<Books> list=bookService.selectByName(keyString);
    		model.addAttribute("books",list);
    		
    	}else{
    		List<Books> list=bookService.selectByPhoneNum(keyString);
    		model.addAttribute("books",list);
    		
    	}
    	return "books/check";
    }
    @RequestMapping("/delete")
    public String delete(Model model,HttpServletRequest request){
    	int id=Integer.parseInt(request.getParameter("id"));
    	DateFormat mediumDateFormat = DateFormat.getDateTimeInstance
	       		(DateFormat.MEDIUM,DateFormat.MEDIUM); 
		Date date=new Date();
    	GiveBooks giveBooks =new GiveBooks();
    	Books book=new Books();
    	book=bookService.selectById(id);
    	giveBooks.setName(book.getName());
    	giveBooks.setPhoneNum(book.getPhoneNum());
    	giveBooks.setMoney(book.getMoney());
    	giveBooks.setGiveTime(mediumDateFormat.format(date));
    	giveBooks.setType(book.getType());
    	bookService.insertIntoGive(giveBooks);
    	bookService.delete(id);
    	return check(model);
    }
    @RequestMapping("/checkGiveBook")
    public String checkGiveBook(Model model){
    	List<GiveBooks> list=bookService .selectGiveBook();
    	model.addAttribute("books",list);
    return "books/checkGiveBook";	
    }
    @RequestMapping("/updatePerpar")
    public String updatePerpar(Model model,HttpServletRequest request){
    	int id=Integer.parseInt(request.getParameter("id"));
    	Books book=new Books();
    	book=bookService.selectById(id);
    	model.addAttribute("book",book);
    	return "books/update";
    }
    @RequestMapping("/update")
    public String update(HttpServletRequest request,Model model,@ModelAttribute("entity") @Valid Books entity,BindingResult bindingResult){
    	int id=Integer.parseInt(request.getParameter("id"));
    	bookService .update(entity,id);
    	return check(model);
    }
    
}