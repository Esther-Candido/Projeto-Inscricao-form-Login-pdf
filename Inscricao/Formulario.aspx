<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Formulario.aspx.cs" Inherits="Inscricao.Formulario" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>FORMULARIO</title>

    	<!-- MATERIAL DESIGN ICONIC FONT -->
		<link rel="stylesheet" href="fonts/material-design-iconic-font/css/material-design-iconic-font.css">

		<!-- DATE-PICKER -->
		<link rel="stylesheet" href="vendor/date-picker/css/datepicker.min.css">

		<!-- STYLE CSS -->
		<link rel="stylesheet" href="css/style.css">
</head>

<body>
    <form id="form1" runat="server">
       
		<div class="wrapper">
            <div action="" id="wizard">
        		<!-- SECTION 1 -->
                <h4></h4>
                <section>
                    <div class="inner">
                    	<a href="#" class="avartar">
                    		<img src="images/logo.jpg" alt="">
                    	</a>
                    	<div class="form-row form-group">
                    		<div class="form-holder">
                                <asp:TextBox type="text" class="form-control" placeholder="Nome" ID="tb_nome" runat="server"></asp:TextBox>
                    		</div>
                    		<div class="form-holder">
                                <asp:TextBox type="text" class="form-control" placeholder="Sobrenome" ID="tb_sobrenome" runat="server"></asp:TextBox>
                    		</div>
                    	</div>
                    	<div class="form-row">
                    		<div class="form-holder">
                                <asp:TextBox type="text" class="form-control" placeholder="Email" ID="tb_email" runat="server"></asp:TextBox>
                    			<i class="zmdi zmdi-email small"></i>
                    		</div>
                    	</div>
                    	<div class="form-row">
                    		<div class="form-holder">
                                <asp:TextBox type="text" class="form-control" placeholder="Telefone" ID="tb_telefone" runat="server"></asp:TextBox>
                    			<i class="zmdi zmdi-smartphone-android"></i>
                    		</div>
                    	</div>
                    	<div class="form-row">
                    		<div class="form-holder">
                                <asp:TextBox type="text" class="form-control" placeholder="Rua" ID="tb_rua" runat="server"></asp:TextBox>
                                <i class="zmdi zmdi-map small"></i>
                    		</div>
                    	</div>
                    	<div class="form-row">
                    		<div class="form-holder">
                                <asp:TextBox type="text" class="form-control" placeholder="Nacionalidade" ID="tb_nacionalidade" runat="server"></asp:TextBox>
                                <i class="zmdi zmdi-account-box-o small"></i>

                    		</div>
     
      
                    	    <asp:Button  class="actions" ID="tb_pdf" runat="server" Text="BAIXAR PDF" OnClick="tb_pdf_Click" />
     
      
                    	</div>
                    </div>
                </section>
            </div>
		</div>




    </form>




    	<script src="js/jquery-3.3.1.min.js"></script>
	

		<!-- DATE-PICKER -->
		<script src="vendor/date-picker/js/datepicker.js"></script>
		<script src="vendor/date-picker/js/datepicker.en.js"></script>

		<script src="js/main2.js"></script>


</body>
</html>
