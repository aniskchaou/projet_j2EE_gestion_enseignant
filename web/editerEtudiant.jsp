<%-- 
    Document   : editerEtudiant
    Created on : May 5, 2016, 4:12:29 PM
    Author     : Hsin
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="iit.tn.entity.MatiereDAO"%>
<%@page import="iit.tn.entity.GroupeDAO"%>
<%@page import="tn.iit.controller.MatiereController"%>
<%@page import="iit.tn.entity.Matiere"%>
<%@page import="tn.iit.controller.GroupeController"%>
<%@page import="iit.tn.entity.Groupe"%>
<%@page import="java.util.List"%>
<%@page import="iit.tn.entity.Etudiant"%>
<%@include  file="/menu.jsp" %>
<%@page import="tn.iit.controller.EtudiantController"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link  href="css/bootstrap.css"  rel="stylesheet" />
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <title>Administration</title>
    </head>
    <body>
        <div class="container">
            <div class="panel panel-default">
                <div class="panel-heading"><h3>editer Etudiant</h3> </div>
                <div class="panel-body">


                    <form action="http://localhost:47032/projet_java/EtudiantController" method="post">
                       
                        <div class="form-group">
                            nom
                            <input  data-validation="length" data-validation-length="min4" type="text" name="nom"  value="${sessionScope.etudiant.nom}" class="form-control" />
                        </div>      
                        <div class="form-group">
                            prenom
                            <input  data-validation="length" data-validation-length="min4" type="text" name="prenom"   value="${sessionScope.etudiant.prenom}" class="form-control" />
                        </div>       
                        <div class="form-group">   
                            adresse
                            <input data-validation="length" data-validation-length="min3" type="text" name="tel"        value="${sessionScope.etudiant.tel}"  class="form-control"  />
                        </div>
                        <input  type="hidden" name="action" value="update"/>
                        <div class="form-group">    
                            num serie
                            <input type="text" data-validation="number" name="numserie"     value="${sessionScope.etudiant.numserie}"  class="form-control"  />
                        </div>    
                        <div class="form-group">
                            tel
                            <input type="text" data-validation="number"  name="tel"  value="${sessionScope.etudiant.tel}"  class="form-control" />
                        </div>       
                        <div class="form-group">  
                            groupe
                            <select name="id_groupe" class="form-control">
                                <c:forEach items="${sessionScope.groupes}" var="item">
                                    <option   value="<c:out  value="${item.id}"/>"><c:out  value="${item.nom}"/></option>
                                </c:forEach>

                            </select>
                        </div>       
                        <div class="form-group">         
                            matiere
                            <select name="id_matiere" class="form-control">
                                <c:forEach items="${sessionScope.matieres}" var="item">
                                    <option   value="<c:out  value="${item.id}"/>"><c:out  value="${item.libelle}"/></option>
                                </c:forEach>        
                            </select>
                        </div>          


                        <input type="hidden"  name="id"   value="${sessionScope.etudiant.id}"/>
                        <input type="hidden"  name="action" value="update"/>



                        <input type="submit" value="ajouter"/>

                    </form>
                        
                            <script src="//ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
     <script src="//cdnjs.cloudflare.com/ajax/libs/jquery-form-validator/2.3.23/jquery.form-validator.min.js">
         
         </script>
         <script>
  $.validate({
    lang: 'fr'
  });
</script>
                </div>
            </div>
        </div>
    </body>
</html>
