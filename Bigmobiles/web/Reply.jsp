

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<jsp:include page="2.jsp"></jsp:include>
   <div class="wrapper wrapper-content">
            <div class="panel panel-default col-md-4">
                <form action="ReplyServlet" method="post">
                    To:<input type="text" name="to" value="${contac.email}" readonly="readonly"/><br/>
                    Subject:<input type="text" name="subject" /><br/>
                    Message:<textarea style="border-radius: 10px" rows="20" name="message" required></textarea><br/>   
                    <input type="submit" value="Send"  />
                </form>
            </div>
        </div>
                    
                    
<jsp:include page="1.jsp"></jsp:include>
