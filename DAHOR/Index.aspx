<%@ Page Language="C#" AutoEventWireup="true" Inherits="Index"
    MasterPageFile="~/Master/base_page.master" Codebehind="Index.aspx.cs" %>

<asp:Content ID="cntIndex" ContentPlaceHolderID="cphBody" runat="server">

    <script type="text/javascript" language="javascript">
        ocultarbotonpresup = true;
    </script>

    <div id="headbody">
        <p class="titulo">Servicios</p>
    </div>
    <div id="content">
        <table>
            <tr>
                <td>
                    <a href="Principal.aspx?info=seg&aptdo=ind">
                        <img class="optionimg" src="Imagenes/option_seg.jpg" alt="" /></a> <a class="linktitle"
                            href="Principal.aspx?info=seg&aptdo=ind">Conserjería / Control</a>
                    <p class="option">
                        Control y Gestión de edificios y comunidades. Seguridad – Control - Conserjes. CCTV
                    </p>
                </td>
                <td>
                    <a href="Principal.aspx?info=limp&aptdo=ind">
                        <img class="optionimg" src="Imagenes/option_limp.jpg" alt="" /></a> <a class="linktitle"
                            href="Principal.aspx?info=limp&aptdo=ind">Limpieza</a>
                    <p class="option">
                        Limpiezas Integrales de Comunidades, Urbanizaciones, Oficinas, Garajes. Fachadas y Abrillantados.
                    </p>
                </td>
                <td>
                    <a href="Principal.aspx?info=pisc&aptdo=ind">
                        <img class="optionimg" src="Imagenes/option_pisc.jpg" alt="" /></a> <a class="linktitle"
                            href="Principal.aspx?info=pisc&aptdo=ind">Piscina</a>
                    <p class="option">
                        Piscinas, Gimnasios, Spas, Hoteles. Socorristas, Mantenimientos – Averías - Reformas.
                    </p>
                </td>
            </tr>
            <tr>
                <td>
                    <a href="Principal.aspx?info=jard&aptdo=ind">
                        <img class="optionimg" src="Imagenes/option_jard.jpg" alt="" /></a> <a class="linktitle"
                            href="Principal.aspx?info=jard&aptdo=ind">Jardineria</a>
                    <p class="option">
                        Mantenimientos y Reformas de Jardines, Sistemas de Riegos. Podas en Altura. Nuevas plantaciones.
                    </p>
                </td>
                <td>
                    <a href="Principal.aspx?info=mnto&aptdo=ind">
                        <img class="optionimg" src="Imagenes/option_mnto.jpg" alt="" /></a> <a class="linktitle"
                            href="Principal.aspx?info=mnto&aptdo=ind">Mantenimiento / Reformas</a>
                    <p class="option">
                        Gestión de Mantenimientos, Reformas y  Proyectos. Servicios 24 Horas de Averías. 
                    </p>
                </td>
                <td>
                    <a href="Principal.aspx?info=evex&aptdo=ind">
                        <img class="optionimg" src="imagenes/option_exp.jpg" alt="" /></a> <a class="linktitle"
                            href="Principal.aspx?info=evex&aptdo=ind">Eventos / Exposiciones</a>
                    <p class="option">
                        Organización de Ferias y Exposiciones. Mantenimiento y Control
                    </p>
                </td>
            </tr>
            <tr>
                <td>
                    <a href="Principal.aspx?info=serv&aptdo=ind">
                        <img class="optionimg" src="Imagenes/option_serv.jpg" alt="" /></a> <a class="linktitle"
                            href="Principal.aspx?info=serv&aptdo=ind">Servicios Integrales</a>
                    <p class="option">
                        La mejor oferta para nuestros clientes, unificando servicios y mejorando costes.
                    </p>
                </td>
                <td class="presuponline">
                    <a class="presup" title="Pinche aquí" href="Principal.aspx?info=presup&aptdo=ind">
                    </a>
                    <img src="imagenes/line_presup.png" style="display: block; float: right;" alt="" />
                </td>
                <td class="telefonos">
                </td>
            </tr>
        </table>
    </div>
    <div id="textofijo">
        <table style="height: 270px">
                <tr>
                    <td>
                        <div id="quienes">
                            <h2>
                                ¿Quiénes somos?</h2>
                            <p class="quienesTxt">
                                GRUPO DAHOR es una compañía de ámbito Nacional dedicada a los Servicios Auxiliares
                                e Integrales en Edificios, Urbanizaciones, Parques Empresariales, Oficinas, Instalaciones
                                Deportivas, Recintos Abiertos, Exposiciones, Ferias.
                                <br />
                                Trabajamos con cobertura nacional, prestando servicios de forma continuada y con
                                atención personalizada las 24 horas del día los 365 días del año.
                                <br />
                                En la actualidad GRUPO DAHOR esta compuesto por más de 100 profesionales que mediante
                                cuidados procesos de selección y formación aseguran a nuestros clientes la calidad
                                y garantía de cada servicio.
                            </p>
                        </div>
                    </td>
                    <td>
                        <div id="service">
                            <h2>
                                Nuestro objetivo</h2>
                            <p class="serviceTxt">
                                Como gran compañía de Servicios, GRUPO DAHOR tiene cuatro claras metas en todos
                                sus servicios:
                            </p>
                            <ul>
                                <li>Personal: Contamos con un inmejorable Dpto. de RRHH, que proporcionan los mejores
                                    profesionales a cada servicio.</li>
                                <li>Formación: Todos nuestros trabajadores realizan formación continuada en sus áreas
                                    de trabajo.</li>
                                <li>Servicio: Nuestro equipo de profesionales cuentan con los mejores medios para la
                                    ejecución y supervisión de cada servicio.</li>
                                <li>Precio: Todos nuestros clientes, cuentan con el mejor precio - calidad del mercado.
                                    Descuentos a nuevos clientes.</li>
                            </ul>
                        </div>
                    </td>
                </tr>
        </table>
    </div> 
</asp:Content>
