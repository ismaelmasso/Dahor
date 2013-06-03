<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="jard.ascx.cs" Inherits="DAHOR.controls.jard" %>
<%@ Register TagPrefix="uc" TagName="facebook" Src="~/controls/facebookLike.ascx" %>
<asp:Panel ID="mjar" runat="server" Visible="false">
    <div id="headbody">
        <p class="titulo">Mantenimiento De Jardines</p>
    </div>
    <uc:facebook runat="server" ID="Facebook1"/>
    <div class="contenido">
        <p class="cabecera">
            <b>Mantenimiento De Jardines</b>
        </p>
        <p class="texto">
            Tratamiento fitosanitario de plagas de árboles y arbustos, así como su sustitución en caso de que sean perjudiciales para la contaminación de las demás plantas y especies.<br />
            Abonado de césped, arboleda, jardineras, etc.<br />
            Siego de césped, a realizar con la frecuencia necesaria para no superar 8 cm de altura (altura media se mantendrá en 4 cm).<br />
            Aireación y escarificado de las praderas de césped.<br />
            Entrecavados de árboles y arbustos si se requiere.<br />
            Rastrillados de jardineras y arreates.<br />
            Poda de árboles y arbustos, en las diferentes épocas del año, para conservarla planta lo mejor posible.<br />
            Limpieza de malas hierbas, hojas, residuos de labores de siega y otros desperdicios.<br />
            Revisión de Sistema de Riego por goteo y aspersión.
        </p>
    </div>
    <br />
    <div class="contenido">
        <img src="imagenes/jard_mjar_1.jpg" style="float: left; margin: 0px 10px 0px 0px;" />
        <p class="cabecera">
            <b>Nueva Plantación / Paisajismo</b>
        </p>
        <p class="texto">
            DAHOR asesora a sus clientes en las distintas épocas del año de plantación nueva a plantar.
        </p>
        <ul style="padding-left:345px;">
                <li>Flores de Temporada.</li>
                <li>Plantas Olorosas.</li>
                <li>Rosales</li>
                <li>Etc...</li>
        </ul>
        <br />
        <p class="cabecera">
            <b>Podas En Altura</b>
        </p>
        <p class="texto">
            Podas en cualquier tipo de Árbol / Arbusto. Según altura y tipo se hará:
        </p>
        <ul style="padding-left:345px;">
            <li>Tijeras telescópicas</li>
            <li>Cordada en altura</li> 
            <li>Vehículo con brazo articulado (grúa).</li> 
        </ul>
        <br />
        <img src="imagenes/jard_mjar_2.jpg" style="float: left; margin: 0px 10px 0px 0px;" />
        <p class="cabecera">
            <b>Averias / Reparaciones</b>
        </p>
        <p class="texto">
            Sistemas de Riegos. Sistemas de Goteo.<br />
            Programadores.<br />
            Sistemas eléctricos.<br />
            Etc...
        </p>
    </div>
</asp:Panel>
<asp:Panel ID="ind" runat="server" Visible="false">
    <div id="headbody">
        <p class="titulo">
            Jardinería</p>
    </div>
    <uc:facebook ID="Facebook2" runat="server"/>
    <div id="content">
        <table style="height: 100px;">
            <tr>
                <td>
                    <a href="Principal.aspx?info=jard&aptdo=mjar">
                        <img class="optionimg" src="Imagenes/option_jard_ind_1.jpg" alt="" /></a> <a class="linktitle"
                            href="Principal.aspx?info=jard&aptdo=mjar">Mantenimiento de jardines</a>
                    <p class="option">
                        Servicio Personalizado para cada Jardín, realizando el Mantenimiento integral, Reformas
                        y Nuevas plantaciones.
                    </p>
                </td>
                <td class="presuponline" colspan="2">
                </td>
            </tr>
        </table>
    </div>
</asp:Panel>
