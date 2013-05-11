<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="presup.ascx.cs" Inherits="DAHOR.controls.presup" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
<asp:Panel ID="ind" runat="server" Visible="false">
    <form id="form1" runat="server" onsubmit="mostrarEnviando()">
    <asp:ScriptManager ID="ScriptManagerMain" runat="server" AllowCustomErrorsRedirect="true">
    </asp:ScriptManager>
    <div id="headbody">
        <p class="titulo">
            Presupuestos on-line</p>
    </div>
    <div id="formpresup">
        <table>
            <tr>
                <td class="tdlabel">
                    <label id="lbNombre">
                        <b>Nombre <span>*</span></b></label>
                </td>
                <td style="width: 295px">
                    <asp:TextBox CssClass="tbinfo" ID="tbNombre" runat="server" TabIndex="1" Width="170px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvNombre" runat="server" ErrorMessage="<p class='inforequerida'><b>Información obligatoria</b><br/>Es necesario un nombre</p>"
                        ControlToValidate="tbNombre" Display="None"></asp:RequiredFieldValidator>
                    <ajaxToolkit:ValidatorCalloutExtender ID="vceNombre" runat="server" TargetControlID="rfvNombre"
                        WarningIconImageUrl="~/imagenes/warning.gif" CloseImageUrl="~/imagenes/close.gif"
                        Width="220px" HighlightCssClass="validatorCalloutHighlight">
                    </ajaxToolkit:ValidatorCalloutExtender>
                </td>
                <td class="tdlabel">
                    <label id="lbApell">
                        <b>Apellidos</b></label>
                </td>
                <td>
                    <asp:TextBox CssClass="tbinfo" ID="tbApell" runat="server" Width="251px" TabIndex="2"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="tdlabel">
                    <label id="lbDirección">
                        <b>Dirección</b></label>
                </td>
                <td class="tdinfo">
                    <asp:TextBox CssClass="tbinfo" ID="tbDirección" runat="server" Width="280px" TabIndex="3"></asp:TextBox>
                </td>
                <td class="tdlabel">
                    <label id="lbPoblacion">
                        <b>Población</b></label>
                </td>
                <td>
                    <asp:TextBox CssClass="tbinfo" ID="tbPoblacion" runat="server" Width="250px" TabIndex="3"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="tdlabel">
                    <label id="lbTelefono">
                        <b>Teléfono <span>*</span></b></label>
                </td>
                <td class="tdinfo">
                    <asp:TextBox CssClass="tbinfo" ID="tbTelefono" runat="server" Width="170px" TabIndex="4"></asp:TextBox>
                    <asp:RequiredFieldValidator runat="server" ID="rfvTelefono" ControlToValidate="tbTelefono"
                        Display="None" ErrorMessage="<p class='inforequerida'><b>Información obligatoria</b><br/>Es necesario un número de teléfono</p>" />
                    <ajaxToolkit:ValidatorCalloutExtender runat="Server" ID="vceTelefono" TargetControlID="rfvTelefono"
                        HighlightCssClass="validatorCalloutHighlight" Width="300px" />
                </td>
                <td class="tdlabel">
                    <label id="lbCP">
                        <b>Código postal</b></label>
                </td>
                <td>
                    <asp:TextBox CssClass="tbinfo" ID="tbCP" runat="server" Width="40px" MaxLength="5"
                        TabIndex="5"></asp:TextBox>
                    <asp:RegularExpressionValidator runat="server" ID="revCPEx" ControlToValidate="tbCP"
                        Display="None" ValidationExpression="\d{5}" ErrorMessage="<p class='inforequerida'><b>Formato incorrecto</b><br/>El CP debe estar conformado por 5 dígitos</p>" />
                    <ajaxToolkit:ValidatorCalloutExtender runat="Server" ID="vceCP" TargetControlID="revCPEx"
                        HighlightCssClass="validatorCalloutHighlight" Width="320px" />
                </td>
            </tr>
            <tr>
                <td class="tdlabel">
                    <label id="lbEmail">
                        <b>Email <span>*</span></b></label>
                </td>
                <td class="tdinfo">
                    <asp:TextBox CssClass="tbinfo" ID="tbEmail" runat="server" Width="170px" TabIndex="6"></asp:TextBox>
                    <asp:RequiredFieldValidator runat="server" ID="rfvEmail" ControlToValidate="tbEmail"
                        Display="None" ErrorMessage="<p class='inforequerida'><b>Información obligatoria</b><br/>Es necesario una dirección de correo</p>" />
                    <ajaxToolkit:ValidatorCalloutExtender runat="Server" ID="vceEmail" TargetControlID="rfvEmail"
                        HighlightCssClass="validatorCalloutHighlight" Width="290px" />
                    <asp:RegularExpressionValidator runat="server" ID="revEmail" ControlToValidate="tbEmail"
                        Display="None" ValidationExpression="^([0-9a-zA-Z]([-.\w]*[0-9a-zA-Z])*@([0-9a-zA-Z][-\w]*[0-9a-zA-Z]\.)+[a-zA-Z]{2,9})$"
                        ErrorMessage="<p><b>Formato incorrecto</b><br/>La dirección de correo no tiene el formato correcto</p>" />
                    <ajaxToolkit:ValidatorCalloutExtender runat="Server" ID="vceEmailEx" TargetControlID="revEmail"
                        HighlightCssClass="validatorCalloutHighlight" Width="290px" />
                </td>
                <td class="tdlabel">
                    <label id="lbHoraCon">
                        <b>Horario de contacto: </b>
                    </label>
                </td>
                <td>
                    <asp:DropDownList ID="ddlHorario" runat="server" TabIndex="7">
                        <asp:ListItem Value="-1">Elige un horario</asp:ListItem>
                        <asp:ListItem Value="a">Todo el día</asp:ListItem>
                        <asp:ListItem Value="m">Mañanas</asp:ListItem>
                        <asp:ListItem Value="t">Tardes</asp:ListItem>
                        <asp:ListItem Value="n">Noches</asp:ListItem>
                    </asp:DropDownList>
                    <label>
                        de</label>
                    <asp:TextBox ID="tbHoraConDesde" runat="server" Height="16px" Width="40px" TabIndex="7"></asp:TextBox>
                    <ajaxToolkit:MaskedEditExtender ID="meeHoraConDesde" runat="server" AcceptAMPM="true"
                        Mask="99:99" MaskType="Time" TargetControlID="tbHoraConDesde" />
                    <label>
                        a</label>
                    <asp:TextBox ID="tbHoraConHasta" runat="server" Width="40px" Height="16px" TabIndex="7"></asp:TextBox>
                    <ajaxToolkit:MaskedEditExtender ID="meeHoraConHasta" runat="server" TargetControlID="tbHoraConHasta"
                        Mask="99:99" MaskType="Time" AcceptAMPM="true" />
                </td>
            </tr>
            <tr>
                <td style="padding: 0px 0px 20px 0px" class="tdlabel">
                    <label>
                        <b>Nombre de la Empresa</b></label>
                </td>
                <td colspan="3" style="padding: 0px 0px 20px 0px">
                    <asp:TextBox CssClass="tbinfo" ID="tbEmpresa" runat="server" Width="170px" TabIndex="8"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="vertical-align: top;" class="tdlabel">
                    <label>
                        <b>Tipo de Centro/s:</b></label>
                </td>
                <td colspan="3">
                    <asp:CheckBoxList ID="cblTipoInmueble" runat="server" RepeatColumns="2" Width="576px"
                        BorderStyle="Groove" BorderWidth="2px" TabIndex="9" DataSourceID="odsCentros"
                        DataTextField="Nombre" DataValueField="Codigo">
                    </asp:CheckBoxList>
                    <asp:ObjectDataSource ID="odsCentros" runat="server" SelectMethod="ObtenerTiposCentro"
                        TypeName="dahor.iu.IU_DAHOR"></asp:ObjectDataSource>
                </td>
            </tr>
            <tr>
                <td style="vertical-align: top;" class="tdlabel">
                    <label>
                        <b>Tipo de Servicio/s</b></label>
                </td>
                <td colspan="3">
                    <asp:CheckBoxList ID="cblTipoServicio" runat="server" RepeatColumns="2" Width="576px"
                        BorderStyle="Groove" BorderWidth="2px" TabIndex="10" DataSourceID="odsServicios"
                        DataTextField="Nombre" DataValueField="Codigo">
                    </asp:CheckBoxList>
                    <asp:ObjectDataSource ID="odsServicios" runat="server" SelectMethod="ObtenerTiposServicio"
                        TypeName="dahor.iu.IU_DAHOR"></asp:ObjectDataSource>
                </td>
            </tr>
            <tr>
                <td style="vertical-align: top;" class="tdlabel">
                    <label>
                        <b>Consulta</b></label>
                </td>
                <td colspan="3">
                    <asp:TextBox ID="tbConsulta" runat="server" Width="571px" Rows="50" Height="100px"
                        TextMode="MultiLine" TabIndex="11"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="text-align: center" colspan="4">
                    <asp:UpdatePanel ID="UpdatePanelPrincipal" runat="server">
                        <ContentTemplate>
                            <asp:Button CssClass="frmShdwSubmit" ID="btnEnviar" runat="server" Text="Enviar consulta"
                                OnClick="btnEnviar_Click" TabIndex="12" />
                            <input type="reset" id="btnDel" value="Borrar" class="frmShdwSubmit" />
                        </ContentTemplate>
                    </asp:UpdatePanel>
                </td>
            </tr>
            <tr>
                <td colspan="4">
                    <label class="nota">
                        <b>Los campos marcados con <span>*</span> son obligatorios</b></label>
                </td>
            </tr>
        </table>
    </div>
    </form>
</asp:Panel>
<asp:Panel ID="mailok" runat="server" Visible="false">
    <div id="infoenvio">
        <p class="enviook">
            El presupuesto ha sido correctamente remitido por correo electrónico
        </p>
        <table>
            <tr>
                <td>
                    <a class="imagen" href="Index.aspx">
                        <img style="border-style: none" alt="" src="imagenes/ReturnButton.png" />
                    </a>
                </td>
                <td>
                    <a class="text" href="Index.aspx" style="text-decoration: none;">Inicio</a>
                </td>
            </tr>
        </table>
    </div>
</asp:Panel>
