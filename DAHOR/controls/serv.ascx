<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="serv.ascx.cs" Inherits="DAHOR.controls.serv" %>
<%@ Register TagPrefix="uc" TagName="facebook" Src="~/controls/facebookLike.ascx" %>
<asp:Panel ID="com" runat="server" Visible="false">
    <div id="headbody">
        <p class="titulo">
            A Comunidades</p>
    </div>
    <uc:facebook ID="Facebook1" runat="server" />
    <div class="contenido">
        <p class="intro">
            <b>GRUPO DAHOR</b> cuenta el mejor Servicio Integral para Comunidades y Urbanizaciones.
            Esta gestión integral hace que todas las necesidades del cliente sean cubiertas
            y gestionadas por DAHOR.
            <br />
            <br />
            Con esta modalidad el cliente puede llegar a ahorrar hasta un <b>-25% de los costes</b>
            (por separado).
        </p>
    </div>
    <br />
    <div class="contenido">
        <img src="imagenes/serv_com_1.jpg" style="float: left; margin: 0px 10px 0px 0px;" />
        <p class="cabecera">
            <b>Servicio de Control y Seguridad</b>
        </p>
        <p class="texto">
            Conserjes<br />
            Controladores de acceso<br />
            Auxiliares de Servicio<br />
            <br />
        </p>
        <br />
        <p class="cabecera">
            <b>Servicio de Limpieza</b>
        </p>
        <p class="texto">
            Limpieza de Mantenimiento<br />
            Limpieza Diaria de Centros<br />
            <br />
        </p>
        <br />
        <p class="cabecera">
            <b>Servicio de Piscina</b>
        </p>
        <img src="imagenes/serv_com_2.jpg" style="float: left; margin: 10px 10px 15px 0px;" />
        <p class="texto">
            Socorristas de Piscina<br />
            Personal de Piscina (Sanitario, Deportivo)<br />
            Mantenimiento de Piscina<br />
            Averías y Reformas<br />
            <br />
        </p>
        <br />
        <p class="cabecera">
            <b>Servicio de Jardinería</b>
        </p>
        <p class="texto">
            Mantenimiento Jardines.<br />
            Nuevas Reformas y plantaciones.<br />
            <br />
        </p>
        <br />
        <p class="cabecera">
            <b>Servicio de Mantenimientos / Reformas</b>
        </p>
        <p class="texto">
            Servicio de Cerrajería, Fontanería, Electricidad, Pintura<br />
            <br />
        </p>
    </div>
</asp:Panel>
<asp:Panel ID="cent" runat="server" Visible="false">
    <div id="headbody">
        <p class="titulo">
            A Centros
        </p>
    </div>
    <uc:facebook ID="Facebook2" runat="server" />
    <div class="contenido">
        <p class="intro">
            <b>GRUPO DAHOR</b> cuenta el mejor Servicio Integral para sus instalaciones. Esta
            gestión integral hace que todas las necesidades del cliente sean cubiertas y gestionadas
            por DAHOR.
            <br />
            <br />
            Con esta modalidad el cliente puede llegar a ahorrar hasta un <b>-25% de los costes</b>
            (por separado).
        </p>
    </div>
    <br />
    <div class="contenido">
        <img src="imagenes/serv_cent_1.jpg" style="float: left; margin: 5px 10px 15px 0px;" />
        <p class="cabecera">
            <b>Servicio Integral en Oficinas</b>
        </p>
        <p class="texto">
            Controladores de acceso - Auxiliares de Servicio.<br />
            Limpieza diaria.<br />
            Desinfección de zonas comunes.<br />
            Equipo de Mantenimiento de Edificio.<br />
            Jardineros para las zonas verdes.<br />
            <br />
        </p>
    </div>
    <br />
    <div class="contenido">
        <p class="cabecera">
            <b>Servicio Integral en Centros Deportivos</b>
        </p>
        <p class="texto">
            Controladores de acceso - Auxiliares de Servicio.<br />
            Limpieza diaria.<br />
            Desinfección de zonas comunes.<br />
            Equipo de Mantenimiento de Edificio.<br />
            Monitores de Sala.<br />
            <img src="imagenes/serv_cent_2.jpg" style="float: left; margin: 0px 10px 15px 0px;" />
            Socorristas de Piscinas.<br />
            Mantenimiento de piscinas.<br />
            <br />
        </p>
    </div>
    <br />
    <div class="contenido">
        <p class="cabecera">
            <b>Servicio Integral en Edificios / Naves</b>
        </p>
        <p class="texto">
            Controladores de acceso - Auxiliares de Servicio.<br />
            Limpieza diaria.<br />
            Desinfección de zonas comunes.<br />
            Mozos y personal.<br />
            Equipo de Mantenimiento de Edificio.
        </p>
    </div>
    <br />
    <br />
    <br />
    <br />
</asp:Panel>
<asp:Panel ID="ind" runat="server" Visible="false">
    <div id="headbody">
        <p class="titulo">
            Servicios Integrales</p>
    </div>
    <uc:facebook ID="Facebook3" runat="server" />
    <div id="content">
        <table style="height: 100px;">
            <tr>
                <td>
                    <a href="Principal.aspx?info=serv&aptdo=com">
                        <img class="optionimg" src="Imagenes/option_serv_ind.jpg" alt="" /></a> <a class="linktitle"
                            href="Principal.aspx?info=serv&aptdo=com">A Comunidades</a>
                    <p class="option">
                        Auxiliares - Conserjes, Limpieza, Piscina, Jardines.
                    </p>
                </td>
                <td>
                    <a href="Principal.aspx?info=serv&aptdo=cent">
                        <img class="optionimg" src="Imagenes/option_serv_ind_2.jpg" alt="" /></a> <a class="linktitle"
                            href="Principal.aspx?info=serv&aptdo=cent">A Centros</a>
                    <p class="option">
                        Vigilantes - Controladores, Limpiezas
                    </p>
                </td>
                <td class="presuponline">
                </td>
            </tr>
        </table>
    </div>
</asp:Panel>
<asp:Panel ID="cont" runat="server" Visible="false">
    <div id="headbody">
        <p class="titulo">
            Contacto
        </p>
    </div>
    <uc:facebook ID="Facebook4" runat="server" />
    <div class="contenido">
        <p class="intro">
            Contacta con nosotros, y te facilitaremos la información que precises, sin compromiso
        </p>
    </div>
    <br />
    <div class="contenido">
        <p class="cabecera">
            <b>Teléfono Central: </b>913 92 33 47
        </p>
        <p class="cabecera">
            <b>Teléfono Central 24H: </b>616 60 32 58
        </p>
        <p class="cabecera">
            <b>Mail: </b><a href="mailto:informacion@dahor.com">informacion@dahor.com</href>
        </p>
    </div>
    <br />
</asp:Panel>
<asp:Panel ID="donde" runat="server" Visible="false">
    <div id="headbody">
        <p class="titulo">
            Dónde estamos
        </p>
    </div>
    <uc:facebook ID="Facebook5" runat="server" />
    <table width="95%">
        <tr align="center">
            <td>
                <div class="contenido">
                    <p class="cabecera">
                        <b>Delegación Madrid</b>
                    </p>
                    <p class="texto">
                        Av. Manoteras Nº8 Esc. 4 2ºD<br />
                        28050 Madrid<br />
                    </p>
                </div>
            </td>
            <td>
                <div class="contenido">
                    <p class="cabecera">
                        <b>Delegación Toledo</b>
                    </p>
                    <p class="texto">
                        C/ Atenas, 67<br />
                        45003 Toledo
                        <br />
                    </p>
                </div>
            </td>
            <td>
                <div class="contenido">
                    <p class="cabecera">
                        <b>Delegación Valencia</b>
                    </p>
                    <p class="texto">
                        Plaza Joan Miró, 43 1º Izq.<br />
                        46017 Valencia<br />
                    </p>
                </div>
            </td>
        </tr>
    </table>
    <br />
</asp:Panel>
<asp:Panel ID="cal" runat="server" Visible="false">
    <div id="headbody">
        <p class="titulo">
            Calidad / Metodología
        </p>
    </div>
    <uc:facebook ID="Facebook6" runat="server" />
    <div class="contenido">
        <p class="intro">
            <b>DAHOR</b> cumple en todos sus clientes con una metodología basada en la clara
            y transparente información, para ofrecer la mayor calidad a sus servicios.<br />
            <br />
            Los empleados de <b>DAHOR</b> son profesionales cualificados y con experiencia,
            para dar la máxima calidad en el trabajo, detalles y acabados.
        </p>
    </div>
    <br />
    <div class="contenido">
        <p class="cabecera">
            <b>El compromiso de DAHOR hacia sus clientes</b>
        </p>
        <p class="texto">
            Identificación inicial de las necesides.<br />
            Plan de ejecución del servicio detallado.<br />
            Plan del personal a realizar los servicios.<br />
            Ofertar el mejor precio del mercado.<br />
            Seguimiento del servio:
        </p>
        <ul>
            <li>Reuniones periódicas con el Cliente</li>
            <li>Seguimiento Telefónico con el Cliente</li>
            <li>Reuniones periódicas con los empleados</li>
        </ul>
    </div>
    <br />
    <div class="contenido">
        <p class="cabecera">
            En definitiva, <i>"<b>DAHOR</b> esta pensado por y para sus clientes.", "El mejor aval
                de <b>DAHOR</b> son sus propios clientes."</i>
        </p>
    </div>
    <br />
</asp:Panel>
<asp:Panel ID="ex" runat="server" Visible="false">
    <div id="headbody">
        <p class="titulo">
            Casos de éxito
        </p>
    </div>
    <uc:facebook ID="Facebook7" runat="server" />
    <div class="contenido">
        <p class="cabecera" style="text-align: center">
            <i>Disponible próximamente</i>
        </p>
    </div>
</asp:Panel>
