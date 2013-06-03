<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="mnto.ascx.cs" Inherits="DAHOR.controls.mnto" %>
<%@ Register TagPrefix="uc" TagName="facebook" Src="~/controls/facebookLike.ascx" %>
<asp:Panel ID="mint" runat="server" Visible="false">
    <div id="headbody">
        <p class="titulo">Mantenimientos Integrales</p>
    </div>
        <uc:facebook runat="server" ID="Facebook1"/>
    <div class="contenido">
        <p class="intro">
            <b>GRUPO DAHOR</b>, realiza mantenimientos y reformas en las distintas áreas:
        </p>
    </div>
    <br />
    <div class="contenido">
        <img src="imagenes/mnto_int_1.jpg" style="float:left; margin: 5px 10px 0px 0px;" />
        <p class="cabecera">
            <b>Piscinas</b>
        </p>
        <p class="texto">
            Reformas, adecuaciones, saneamientos, arreglos, etc… todo lo que su piscina necesite y precise en 
            reformas DAHOR le garantiza el éxito de los trabajos al igual que una inmejorable relación (precio-calidad). 
            Solicite presupuesto sin compromiso de su reforma.
        </p>
    </div>
    <br />
    <br />
    <img src="imagenes/mnto_int_2.jpg" style="float:left; margin: 0px 10px 0px 0px;" />
    <div class="contenido">
        <p class="cabecera" style="margin: 15px 10px 0px 0px;" >
            <b>Mantenimientos Varios</b>
        </p>
        <p class="texto">
            El equipo de Mantenimiento DAHOR gestiona los servicios de:
        </p>
        <ul style="padding-left:260px">
            <li>Electricidad</li>
            <li>Fontanería</li>
            <li>Cerrajería</li>
            <li>Pintura</li>
        </ul>
    </div>
    <br />
    <br />
    <div class="contenido">
        <img src="imagenes/mnto_int_3.jpg" style="float:left; margin: 5px 10px 0px 0px;" />
        <p class="cabecera" style="margin: 20px 10px 0px 0px;">
            <b>Reformas Varias</b>
        </p>
        <p class="texto">
            Solicite presupuesto a nuestro equipo de técnicos para las reformas que precisen sus instalaciones desde albañilería a diseño de espacios.<br />
            Presupuestos técnicos sin compromiso:
        </p>
        <ul style="padding-left:260px">
            <li>Con plazos de ejecución.</li>
            <li>Detalle de cada partida.</li>
            <li>Revisión de reforma y unidades de obra.</li>
            <li>Etc...</li>
        </ul>
    </div>
    <br />
</asp:Panel>
<asp:Panel ID="m24h" runat="server" Visible="false">
    <div id="headbody">
        <p class="titulo">
            Servicio 24 Horas De Mantenimiento
        </p>
    </div>
        <uc:facebook ID="Facebook2" runat="server"/>
    <div class="contenido">
        <p class="intro">
            <b>GRUPO DAHOR</b>, pone al alcance de sus clientes más exigentes un servicio exclusivo y de calidad, para cualquier tipo de intervención que haya que realizar "Servicio 24 Horas de mantenimientos".
        </p>
    </div>
    <br />
    <div class="contenido">
        <p class="cabecera">
            <b>MANTENIMIENTOS / REFORMAS</b>
        </p>
        <p class="texto">
            Los servicios que cuentan con el servicios 24 Horas son:
        </p>
        <ul>
            <li>Electricidad</li>
            <li>Fontanería</li>
            <li>Cerrajería</li>
            <li>Pintura</li>
        </ul>
    </div>
    <br />
    <div>
        <p class="texto">
            También disponemos de servicios urgentes de Limpieza, Jardinería o cualquier tipo de servicio de DAHOR.
        </p>
        <br />
        <table style="margin-left:300px;">
            <tr>
                <td><img src="imagenes/mnto_24h_1.jpg"/></td>
            </tr>
        </table>
    </div>
</asp:Panel>
<asp:Panel ID="ind" runat="server" Visible="false">
    <div id="headbody">
        <p class="titulo">
            Mantenimiento y Reformas</p>
    </div>
        <uc:facebook ID="Facebook3" runat="server"/>
    <div id="content">
        <table style="height: 100px;">
            <tr>
                <td>
                    <a href="Principal.aspx?info=mnto&aptdo=mint"><img class="optionimg" src="Imagenes/option_mnto_ind_1.jpg" alt="" /></a>
                    <a class="linktitle" href="Principal.aspx?info=mnto&aptdo=mint">Mantenimientos integrales</a>
                    <p class="option">
                        Electricidad, Cerrajería, Pintura, Fontanería. Servicio integral a Comunidades.
                    </p>
                </td>
                <td>
                    <a href="Principal.aspx?info=mnto&aptdo=m24h"><img class="optionimg" src="Imagenes/option_mnto_ind_2.jpg" alt="" /></a>
                    <a class="linktitle" href="Principal.aspx?info=mnto&aptdo=m24h">Servicio 24 horas</a>
                    <p class="option">
                        Servicio Exclusivo de Mantenimientos urgentes, para nuestros clientes más exigentes.
                    </p>
                </td>
                <td class="presuponline"></td>
            </tr>
        </table>
    </div>
</asp:Panel>
