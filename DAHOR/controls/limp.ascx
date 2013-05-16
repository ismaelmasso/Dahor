<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="limp.ascx.cs" Inherits="DAHOR.controls.limp" %>
<%@ Register TagPrefix="uc" TagName="facebook" Src="~/controls/facebookLike.ascx" %>
<asp:Panel ID="com" runat="server" Visible="false">
    <div id="headbody">
        <p class="titulo">
            Comunidades</p>
        <uc:facebook runat="server" ID="Facebook1"/>
    </div>
    <div class="contenido">
        <p class="intro">
            La limpieza de los hogares de cada uno de nuestros clientes, es para <b>GRUPO DAHOR</b>,
            un compromiso diario con la calidad y profesionalidad. Objetivo que cada uno de
            nuestros profesionales tiene como meta.
        </p>
    </div>
    <br />
    <div class="contenido">
        <p class="cabecera">
            <b>Detalle de los Servicios de Limpieza</b></p>
        <p class="texto">
            Limpieza de Portales, Bloques, Entradas, Hall.<br />
            Limpieza de Zonas Comunes, Pistas deportivas, Piscinas, Vestuarios, Aseos.<br />
            Limpieza de Cristales, Espejos, suelos y paredes.<br />
            Limpieza de Ascensores, puertas metálicas, railes.<br />
            Limpieza accesos e interiores de garajes y trasteros.<br />
            Gratis en todos los presupuestos:<br />
        </p>            
        <ul>
            <li>Limpieza de garajes con maquinaria y personal cualificado.</li>
            <li>Abrillantado de portales.</li>
            <li>Limpieza de exteriores de Comunidad con Hidro-limpiadoras Industriales.</li>
        </ul>
    </div>
    <br />
    <div class="contenido">
        <img src="imagenes/lim_com_1.jpg" style="float: left; margin: 5px 10px 0px 0px;" />
        <p class="cabecera">
            <b>Gestión a Comunidades</b></p>
        <p class="texto">
            Planning / Cuadrante de limpieza en todos los servicios.<br />
            Revisiones semanales de Limpieza.<br />
            Supervisores especializados en productos y procedimientos de Limpieza.<br />
            Profesionales con experiencia y la mejor dedicación.<br />
            Todos los productos y herramientas de Limpieza incluidos.<br />
            Comunicados Internos a las Comunidades preavisando de Limpieza de Garajes y Abrillantados.
        </p>
    </div>
    <br />
    <br />
    <div class="contenido" style="margin-top:10px;">
        <img src="imagenes/lim_com_2.jpg" style="float: left; margin: 0px 10px 0px 0px;" />
        <p class="cabecera">
            <b>Limpiezas Especiales a Comunidades</b></p>
        <p class="texto">
            La mejor Limpieza profesional de Garajes y Trasteros.<br />
            Limpieza de Fachadas / Graffitis.<br />
            Limpieza de Cristales / pasarelas en altura.<br />
            Pulidos, Decapados y Abrillantados en suelos y entradas.<br />
            Tratamientos de Suelos.
        </p>
    </div>
    <br />
    <br />
    <br />
</asp:Panel>
<asp:Panel ID="col" runat="server" Visible="false">
    <div id="headbody">
        <p class="titulo">
            Colegios</p>
        <uc:facebook ID="Facebook2" runat="server"/>
    </div>
    <div class="contenido">
        <p class="intro">
            Limpieza, Desinfectación, Desratización, etc… son servicios que incluimos en las Limpiezas de Colegios, Institutos, Aulas, etc...
        </p>
    </div> 
    <br />
    <img src="imagenes/colegios.jpg" style="float:left; margin-right:10px; height:310px;" />
    <div class="contenido">
        <p class="cabecera">
            <b>Detalle de los Servicios de Limpieza</b>
        </p>
        <p class="texto">
           Limpieza de Entradas, Hall.<br />
           Limpieza de Comedores, Zonas Comunes, Pistas deportivas, Piscinas, Vestuarios, Aseos.<br />
           Limpieza de Alulas y Salas (suelos y paredes, cristales, espejos)<br />
           Limpieza de Mobiliario, Equipos informáticos, etc...<br />
           Recogida diaria de basuras.
        </p>
    </div>
    <br />
    <div class="contenido">
        <p class="cabecera">
            <b>Gestión a Centros</b>
        </p>
        <p class="texto">
           Planning / Cuadrante de limpieza en todos los servicios.<br />
           Revisiones semanales de Limpieza.<br />
           Supervisores especializados en productos y procedimientos de Limpieza.<br />
           Profesionales con experiencia y la mejor dedicación.<br />
           Todos los productos y herramientas de Limpieza incluidos.<br />
           Comunicados Internos a las Comunidades preavisando de Limpieza de Garajes y Abrillantados.
        </p>
    </div>
    <br />
    <div class="contenido">
        <p class="cabecera">
            <b>Limpiezas Especiales a Comunidades</b>
        </p>
        <p class="texto">
            Tratamientos de Desinfectación, Desratización, etc...<br />
            Tratamientos de Limpieza de fachadas, y mobiliario.
        </p>
    </div>
    <br />
    <div class="contenido">
        <p class="intro">
            La limpieza en las aulas, es una obligación diaria que DAHOR planifica en todos sus centros.
        </p>
    </div> 
</asp:Panel>
<asp:Panel ID="loc" runat="server" Visible="false">
    <div id="headbody">
        <p class="titulo">
            Oficinas / Locales</p>
        <uc:facebook ID="Facebook3" runat="server"/>
    </div>
    <div class="contenido">
        <p class="intro">
            Que nuestros clientes cuenten con la máxima garantía de limpieza y desinfección
            en sus trabajos, es el compromiso diario de los profesionales de <b>GRUPO DAHOR</b>.
        </p>
    </div>
    <br />
    <div class="contenido">
        <p class="cabecera">
            <b>Estos servicios se realizan para</b>
        </p>
    </div>
    <br />
    <div class="contenido">
        <table class="tablafotos">
            <tr>
                <td>
                    <img src="imagenes/oficinas.jpg" width="180px" height="120px"/>
                    <p class="texto">Edificios de Oficina y Despachos</p>
                </td>
                <td>
                    <img src="imagenes/centro_negocios.jpg" width="180px" height="120px"/>
                    <p class="texto">Centros de Negocios</p>
                </td>
            </tr>
            <tr>
                <td>
                    <img src="imagenes/establecimientos.jpg" width="180px" height="120px"/>
                    <p class="texto">Establecimientos</p>
                </td>
                <td>
                    <img src="imagenes/almacenes.jpg" width="180px" height="120px"/>
                    <p class="texto">Almacenes </p>
                </td>
            </tr>
            <tr>
                <td>
                    <img src="imagenes/nave_industrial.jpg" width="180px" height="120px"/>
                    <p class="texto">Naves</p>
                </td>
                <td >
                </td>
            </tr>
        </table>        
    </div>
    <br />
</asp:Panel>
<asp:Panel ID="fob" runat="server" Visible="false">
    <div id="headbody">
        <p class="titulo">
            Fin De Obra</p>
        <uc:facebook ID="Facebook4" runat="server"/>
    </div>
    <div class="contenido">
        <p class="intro">
            Constructoras, Promotoras y particulares, cuentan ya con un inmejorable servicio
            de Limpieza de Obra:
        </p>
        <br />
        <table class="tablafotos" style="width:700px; margin-left:85px">
            <tr>
                <td>
                    <img src="imagenes/fin_obra.jpg" width="130px" height="130px"/>
                    <p class="texto">Limpieza Fin de Obra.</p>
                </td>
                <td>
                    <img src="imagenes/limp_fob_1.jpg" width="130px" height="130px"/>
                    <p class="texto">Limpieza de Repasos.</p>
                </td>
                <td>
                    <img src="imagenes/entrega.jpg" width="130px" height="130px"/>
                    <p class="texto">Limpieza de Entrega.</p>
                </td>
            </tr>
        </table>
    </div>
    <div class="contenido">
        <p class="cabecera">
            <b>Detalle de los Servicios de Limpieza Fin de Obra</b></p>
        <p class="texto">
            Limpieza integral de Obra.<br />
            Limpieza de marcas de Obra.<br />
            Limpieza de cristales de Obra.<br />
            Limpieza integral de paredes y suelos de Obra.<br />
            Limpieza de zonas Comunes, pistas deportivas, piscinas, vestuarios, aseos.
        </p>
    </div>
    <br />
    <div class="contenido">
        <p class="cabecera">
            <b>Detalle de los Servicios de Limpieza Entrega</b></p>
        <p class="texto">
            Limpieza y Tratamiento exhaustivo de suelos (Mármol, parket, tarimas, terrazos,
            etc...)<br />
            Limpieza Integral de oficina, local o vivienda a entregar.<br />
            Gestión rápida y eficaz mediante supervisores de Obra.
        </p>
    </div>
    <br />
</asp:Panel>
<asp:Panel ID="alt" runat="server" Visible="false">
    <div id="headbody">
        <p class="titulo">
            De Altura</p>
        <uc:facebook ID="Facebook5" runat="server"/>
    </div>
    <div class="contenido">
        <p class="intro">
            Servicio especial a Edificios, Oficinas y Comunidades de Propietarios. Limpieza
            de Cristales y Fachadas en Altura mediante personal cualificado, asegurado y titulado.<br />
            <br />
            <b>GRUPO DAHOR</b>, cuenta con un equipo de profesionales de dilatada experiencia
            desde hace años. Nuestros clientes confían en DAHOR para asegurar los mejores resultados
            de limpieza e imagen en sus edificios.
        </p>
        <br />
        <table style="margin-left:300px">
            <tr>
                <td><img src="imagenes/option_limp_altura_1.jpg" width="130px" height="130px"/></td>
                <td rowspan="2"><img src="imagenes/option_limp_altura_2.jpg" height="260px"/></td>
            </tr>
            <tr>
                <td><img src="imagenes/option_limp_altura_3.jpg" width="130px" height="130px"/></td>
            </tr>
        </table>
    </div>
</asp:Panel>
<asp:Panel ID="fac" runat="server" Visible="false">
    <div id="headbody">
        <p class="titulo">
            Fachadas</p>
        <uc:facebook ID="Facebook6" runat="server"/>
    </div>
    <div class="contenido">
        <p class="intro">
            Si Necesita Limpiar su Fachada, de Graffitis, Pintadas, Erosión o simplemente por deterioro del paso de los años,  consulte a nuestros técnicos los distintos procedimientos industriales para recuperar su Fachada.
        </p>
        <br />
        <table id="tablafotos" style="width:700px; margin-left:120px">
            <tr>
                <td>
                    <img src="imagenes/fachada_1.jpg" width="130px" height="130px"/>
                    <p class="texto">Limpieza Fin de Obra.</p>
                </td>
                <td>
                    <img src="imagenes/fachada_2.jpg" width="130px" height="130px"/>
                    <p class="texto">Limpieza de Repasos.</p>
                </td>
                <td>
                    <img src="imagenes/fachada_3.jpg" width="130px" height="130px"/>
                    <p class="texto">Limpieza de Entrega.</p>
                </td>
            </tr>
        </table>      
    </div>
    <br />
    <div class="contenido">
        <p class="cabecera">
            <b>Limpieza de</b></p>
        <p class="texto">
            Ladrillos de diferentes calidades.<br />
            Piedras pulidas y porosas.<br />
            Hormigón.
        </p>
    </div>
    <br />
</asp:Panel>
<asp:Panel ID="ind" runat="server" Visible="false">
    <div id="headbody">
        <p class="titulo">
            Limpieza</p>
        <uc:facebook ID="Facebook7" runat="server"/>
    </div>
    <div id="content">
        <table style="height: 200px;">
            <tr>
                <td>
                    <a href="Principal.aspx?info=limp&aptdo=com">
                        <img class="optionimg" src="Imagenes/option_limp_ind_1.jpg" alt="" /></a> <a class="linktitle"
                            href="Principal.aspx?info=limp&aptdo=com">Comunidades</a>
                    <p class="option">
                        Limpieza integral de comunidades y urbanizaciones. Garajes. Pulidos. Exteriores
                    </p>
                </td>
                <td>
                    <a href="Principal.aspx?info=limp&aptdo=col">
                        <img class="optionimg" src="Imagenes/option_limp_ind_2.jpg" alt="" /></a> <a class="linktitle"
                            href="Principal.aspx?info=limp&aptdo=col">Colegios</a>
                    <p class="option">
                        Los mejores medios de desinfección para las aulas.
                    </p>
                </td>
                <td>
                    <a href="Principal.aspx?info=limp&aptdo=loc">
                        <img class="optionimg" src="Imagenes/option_limp_ind_3.jpg" alt="" /></a> <a class="linktitle"
                            href="Principal.aspx?info=limp&aptdo=loc">Oficinas/Locales</a>
                    <p class="option">
                        Trabaje en el mejor entorno. Limpieza de suelos y moquetas, cristales, Despachos
                        y Mobiliario.
                    </p>
                </td>
            </tr>
            <tr>
                <td>
                    <a href="Principal.aspx?info=limp&aptdo=fob">
                        <img class="optionimg" src="Imagenes/option_limp_ind_4.jpg" alt="" /></a> <a class="linktitle"
                            href="Principal.aspx?info=limp&aptdo=fob">Fin de Obra</a>
                    <p class="option">
                        El mejor servicio de Limpieza a Constructoras y Promotoras. Aseguramos resultados.
                    </p>
                </td>
                <td>
                    <a href="Principal.aspx?info=limp&aptdo=alt">
                        <img class="optionimg" src="Imagenes/option_limp_ind_6.jpg" alt="" /></a> <a class="linktitle"
                            href="Principal.aspx?info=limp&aptdo=alt">De Altura</a>
                    <p class="option">
                        Limpieza de cristales, pasarelas y fachadas. Con góndola o arnés.
                    </p>
                </td>
                <td>
                    <a href="Principal.aspx?info=limp&aptdo=fac">
                        <img class="optionimg" src="Imagenes/option_limp_ind_5.jpg" alt="" /></a> <a class="linktitle"
                            href="Principal.aspx?info=limp&aptdo=fac">Fachadas</a>
                    <p class="option">
                        Obtenga los mejores resultados contra Graffitis, desgaste o erosión. Lavados de
                        Fachadas.
                    </p>
                </td>
            </tr>
        </table>
    </div>
</asp:Panel>
