<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="varios.ascx.cs" Inherits="DAHOR.controls.varios" %>
<%@ Register TagPrefix="uc" TagName="facebook" Src="~/controls/facebookLike.ascx" %>
<asp:Panel ID="nos" runat="server" Visible="false">
    <div id="headbody">
        <p class="titulo">
            Quienes Somos</p>
        <uc:facebook ID="Facebook1" runat="server"/>
    </div>
    <div class="contenido">
        <p class="intro">
            <b>GRUPO DAHOR</b> es una compañía de ámbito Nacional dedicada a los Servicios de Mantenimiento y Personal. Dedicada por completo a su extenso abanico de clientes: Comunidades de Propietarios, Edificios, Parques Empresariales, Oficinas y Empresas, Exposiciones, Ocio, Deportes, etc….
            PONGA SUS SERVICIOS EN MANOS DE LOS MEJORES PROFESIONALES.
        </p>
    </div>
    <br />
    <div class="contenido">
        <p class="cabecera">
            <b>En <b>GRUPO DAHOR</b> la Máxima es la satisfacción de nuestros clientes, para ello contamos con innumerables variables de Éxito:</b></p>
        <p class="texto">
            El mejor personal en cada servicio.<br />
            La mejor gestión en cada necesidad.<br />
            El mejor precio para nuestro cliente.<br />
        </p>
    </div>
    <br />
</asp:Panel>
<asp:Panel ID="exi" runat="server" Visible="false"></asp:Panel>
