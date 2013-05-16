<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="evex.ascx.cs" Inherits="DAHOR.controls.evex" %>
<%@ Register TagPrefix="uc" TagName="facebook" Src="~/controls/facebookLike.ascx" %>
<asp:Panel ID="ext" runat="server" Visible="false">
    <div id="headbody">
        <p class="titulo">
            Exposiciones De Exterior</p>
        <uc:facebook runat="server" ID="Facebook1"/>
    </div>
    <div class="contenido">
        <p class="intro">
            El  Departamento de Exposiciones y Eventos de DAHOR gestiona de inicio a fin cada uno de los eventos
        </p>
        <br />
        <table class="tablafotos" style="width:800px; margin-left:50px">
            <tr>
                <td>
                    <img src="imagenes/exp_ext_1.jpg" height="130px"/>
                    <p class="texto">Ferias y Congresos de Exteriores</p>
                </td>
                <td>
                    <img src="imagenes/exp_ext_2.jpg" height="130px"/>
                    <p class="texto">Exposiciones y Muestras</p>
                </td>
                <td>
                    <img src="imagenes/exp_ext_3.jpg" height="130px"/>
                    <p class="texto">Eventos y Reuniones</p>
                </td>
            </tr>
        </table>
    </div>
    <div class="contenido">
        <p class="cabecera">
            <b>Detalle de los Servicios Control y Seguridad</b></p>
        <p class="texto">
           Personal de Control en entrada a recintos.<br />
           Personal de Seguridad y Vigilancia de los Eventos.<br />
           Rondas por perímetros y accesos.<br />
           <u>Control y Garantía de Éxito.</u>
        </p>
    </div>
    <br />    
    <div class="contenido">
        <p class="cabecera">
            <b>Detalle de los Servicios Recepción, Bienvenida y Azafatas</b></p>
        <p class="texto">
           Personal de Recepción y Azafatas.<br />
           Información a usuarios y explicaciones de producto.<br />
           Entrega de Merchandising / Productos Corporativos de los clientes.<br />
           <u>Imagen e Información garantizada.</u>
        </p>
    </div>
    <br />    
    <div class="contenido">
        <p class="cabecera">
            <b>Detalle de los Servicios de Limpieza</b></p>
        <p class="texto">
           Limpieza de recintos exteriores.<br />
           Limpieza de Materiales expuestos, zonas de acceso, etc...<br />
           <u>Gestión rápida y eficaz</u>
        </p>
    </div>
    <br />
</asp:Panel>
<asp:Panel ID="int" runat="server" Visible="false">
    <div id="headbody">
        <p class="titulo">
            Exposiciones De Interior</p>
        <uc:facebook ID="Facebook2" runat="server"/>
    </div>
    <div class="contenido">
        <p class="intro">
            Gestión Integral para las Exposiciones y Galerías de Interior.
        </p>
        <br />
        <table class="tablafotos" style="width:800px; margin-left:50px">
            <tr>
                <td>
                    <img src="imagenes/exp_int_1.jpg" height="130px"/>
                    <p class="texto">Exposiciones y Eventos</p>
                </td>
                <td>
                    <img src="imagenes/exp_int_2.jpg" height="130px"/>
                    <p class="texto">Galerías y Muestras</p>
                </td>
            </tr>
        </table>
     </div>
    <br />    
    <div class="contenido">
        <p class="cabecera">
            <b>Detalle de los Servicios Control y Seguridad</b></p>
        <p class="texto">
           Personal de Control en entrada a recintos.<br />
           Personal de Seguridad y Vigilancia de los Eventos.<br />
           Rondas por perímetros y accesos.<br />
           <u>Control y Garantía de Éxito.</u>
        </p>
    </div>
    <br />
    <div class="contenido">
        <p class="cabecera">
            <b>Detalle de los Servicios Recepción, Bienvenida y Azafatas</b>
        </p>
        <p class="texto">
           Personal de Recepción y Azafatas.<br />
           Información a usuarios y explicaciones de producto.<br />
           Entrega de Merchandising / Productos Corporativos de los clientes.<br />
           <u>Imagen e Información garantizada.</u>
        </p>
    </div>
    <br />
    <div class="contenido">
        <p class="cabecera">
            <b>Detalle de los Servicios de Limpieza</b>
        </p>
        <p class="texto">
           Limpieza de recintos exteriores.<br />
           Limpieza de Materiales expuestos, zonas de acceso, etc...<br />
           <u>Gestión rápida y eficaz</u>
        </p>
    </div>
    <br />
</asp:Panel>
<asp:Panel ID="ind" runat="server" Visible="false">
    <div id="headbody">
        <p class="titulo">
            Eventos y Exposiciones</p>
        <uc:facebook ID="Facebook3" runat="server"/>
    </div>
    <div id="content">
        <table style="height: 100px;">
            <tr>
                <td>
                    <a href="Principal.aspx?info=evex&aptdo=ext">
                        <img class="optionimg" src="imagenes/option_exp_ext.jpg" alt="" /></a> <a class="linktitle"
                            href="Principal.aspx?info=evex&aptdo=ext">Exposiciones de Exterior</a>
                    <p class="option">
                        Seguridad, CCTV, Limpiezas, Azafatas.
                    </p>
                </td>
                <td>
                    <a href="Principal.aspx?info=evex&aptdo=int">
                        <img class="optionimg" src="imagenes/option_exp_int.jpg" alt="" /></a> <a class="linktitle"
                            href="Principal.aspx?info=evex&aptdo=int">Exposiciones de Interior</a>
                    <p class="option">
                        Control, Logística, Seguridad, Limpieza.
                    </p>
                </td>
                <td class="presuponline">
                </td>
            </tr>
        </table>
    </div>
</asp:Panel>
