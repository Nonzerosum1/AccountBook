function delete_giveMoney(id){
	//alert("jj")
           $(function(){
	            $.ajax({
	            url:"/AccountBook/books/delete",/*请求的地址*/
	            data:"id="+id,/*数据携带*/
	            type:"get"/*请求的方式*/
	            });
    
          });
}