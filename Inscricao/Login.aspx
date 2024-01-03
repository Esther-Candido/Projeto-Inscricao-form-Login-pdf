<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Inscricao.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>LOGIN</title>
    <!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="images/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/Linearicons-Free-v1.0.0/icon-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="css/util.css">
	<link rel="stylesheet" type="text/css" href="css/main.css">
<!--===============================================================================================-->
</head>
<body>
    <form id="form1" runat="server">
        

			<div class="limiter">
		<div class="container-login100" style="background-image: url('images/bg-01.jpg');">
			<div class="wrap-login100 p-t-30 p-b-50">
				<span class="login100-form-title p-b-41">
					Fazer Login
				</span>
				<div class="login100-form validate-form p-b-33 p-t-5">


					<!--Utilizador-->
					<div class="wrap-input100 validate-input" data-validate = "Enter username">
					<asp:TextBox class="input100" name="username" placeholder="Utilizador" ID="tb_user" runat="server" Height="50px" Width="378px"></asp:TextBox>
						<span class="focus-input100" data-placeholder="&#xe82a;"></span>
					</div>
					<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="tb_user" ForeColor="Red" ErrorMessage="Campo utilizador é obrigatorio">*</asp:RequiredFieldValidator>



					<!--Senha-->
					<div class="wrap-input100 validate-input" data-validate="Enter password">
					<asp:TextBox class="input100" type="password" name="pass" placeholder="Senha" ID="tb_senha" runat="server" Height="49px" Width="326px"></asp:TextBox>
					<span class="focus-input100" data-placeholder="&#xe80f;"></span>
					</div> 
					<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Campo senha é obrigatorio" ForeColor="Red" ControlToValidate="tb_senha">*</asp:RequiredFieldValidator>



					<!--Botao Entrar-->
					<div class="container-login100-form-btn m-t-32">
						<asp:Button class="login100-form-btn" ID="btn_entrar" runat="server" Text="Entrar" OnClick="btn_entrar_Click" />
   
					</div>


				    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" />
                    

				  
					<div class="teste">
						<asp:Label ID="lbl_mensagem" runat="server" EnableTheming="True" ForeColor="Red" Text="ATENÇÃO: utilizador ou senha incorreta" Visible="False"></asp:Label>
					</div>
				    
                    <style>
						.teste{
							margin-top: 20px;
							margin-left: 50px;
						}
                    </style>

				  

				</div>
			</div>
		</div>
	</div>
	

	<div id="dropDownSelect1"></div>





    </form>

	<!--===============================================================================================-->
	<script src="vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/bootstrap/js/popper.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/daterangepicker/moment.min.js"></script>
	<script src="vendor/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
	<script src="vendor/countdowntime/countdowntime.js"></script>
<!--===============================================================================================-->
	<script src="js/main.js"></script>

</body>
</html>
