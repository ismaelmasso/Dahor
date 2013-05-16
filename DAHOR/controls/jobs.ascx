<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="jobs.ascx.cs" Inherits="DAHOR.controls.jobs" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<asp:Panel ID="ind" runat="server" Visible="false">
    <form id="form1" runat="server" onsubmit="mostrarEnviando()">
    <asp:ScriptManager ID="ScriptManagerMain" runat="server" AllowCustomErrorsRedirect="true">
    </asp:ScriptManager>
    <div id="headbody">
        <p class="titulo">
            Datos del candidato</p>
        <uc:facebook runat="server" ID="Facebook1"/>
    </div>
    <div id="formpresup">
        <table style="width: 800px">
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
            </tr>
            <tr>
                <td class="tdlabel">
                    <label id="lbApell">
                        <b>Apellidos</b></label>
                </td>
                <td class="tdinfo">
                    <asp:TextBox CssClass="tbinfo" ID="tbApell" runat="server" Width="251px" TabIndex="2"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="tdlabel">
                    <label id="lbFNac">
                        <b>Fecha de Nacimiento <span>*</span></b></label>
                </td>
                <td class="tdinfo">
                    <asp:TextBox CssClass="tbinfo" ID="tbFecNac" runat="server" Width="80px" TabIndex="4"></asp:TextBox>
                    <ajaxToolkit:TextBoxWatermarkExtender ID="tbweFecNac" runat="server" TargetControlID="tbFecNac"
                        WatermarkText="dd/mm/yyyy" WatermarkCssClass="marcadeaguatelefono" />
                    <asp:RequiredFieldValidator runat="server" ID="rfvFecNac" ControlToValidate="tbFecNac"
                        Display="None" ErrorMessage="<p class='inforequerida'><b>Información obligatoria</b><br/>Es obligatorio especificar la fecha de nacimiento</p>" />
                    <ajaxToolkit:ValidatorCalloutExtender runat="Server" ID="veFecNac" TargetControlID="rfvFecNac"
                        HighlightCssClass="validatorCalloutHighlight" Width="300px" />
                    <asp:CompareValidator ID="cvFecNac" runat="server" Width="164px" ControlToValidate="tbFecNac"
                        Type="Date" Display="None" Operator="DataTypeCheck" ErrorMessage="<p class='inforequerida'><b>Fecha no válida</b><br/>La fecha especificada no es correcta o no sigue el formato adecuado dd/mm/yyyy</p>" />
                    <ajaxToolkit:ValidatorCalloutExtender runat="Server" ID="vceFecNacValida" TargetControlID="cvFecNac"
                        HighlightCssClass="validatorCalloutHighlight" Width="320px" />
                </td>
            </tr>
            <tr>
                <td class="tdlabel">
                    <label id="Label1">
                        <b>Nacionalidad <span>*</span></b></label>
                </td>
                <td class="tdinfo">
                    <asp:TextBox CssClass="tbinfo" ID="tbNac" runat="server" Width="170px" TabIndex="4"></asp:TextBox>
                    <asp:RequiredFieldValidator runat="server" ID="rfvNac" ControlToValidate="tbNac"
                        Display="None" ErrorMessage="<p class='inforequerida'><b>Información obligatoria</b><br/>Es obligatorio especificar una nacionalidad</p>" />
                    <ajaxToolkit:ValidatorCalloutExtender runat="Server" ID="Validatorcalloutextender1"
                        TargetControlID="rfvNac" HighlightCssClass="validatorCalloutHighlight" Width="300px" />
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
            </tr>
            <tr>
                <td style="vertical-align: top;" class="tdlabel">
                    <label>
                        <b>Puesto de Trabajo a realizar:</b></label>
                </td>
                <td>
                    <asp:CheckBoxList ID="cblTipoPuesto" runat="server" RepeatColumns="3" Width="576px"
                        BorderStyle="Groove" BorderWidth="2px" TabIndex="9" DataSourceID="odsPuestos"
                        DataTextField="Nombre" DataValueField="Codigo">
                    </asp:CheckBoxList>
                    <asp:ObjectDataSource ID="odsPuestos" runat="server" SelectMethod="ObtenerTiposPuesto"
                        TypeName="dahor.iu.IU_DAHOR"></asp:ObjectDataSource>
                </td>
            </tr>
            <tr>
                <td class="tdlabel">
                    <label id="lbExp">
                        <b>¿Tiene Experiencia en <span>*</span> el/los puesto/s solicitados</b>
                    </label>
                </td>
                <td>
                    <asp:RadioButtonList runat="server" ID="rblExperiencia" RepeatDirection="Horizontal">
                        <asp:ListItem Value="si">Si</asp:ListItem>
                        <asp:ListItem Value="no">No</asp:ListItem>
                    </asp:RadioButtonList>
                    <asp:RequiredFieldValidator runat="server" ID="rfExp" ControlToValidate="rblExperiencia"
                         ErrorMessage="<p class='inforequerida'><b>Información obligatoria</b><br/>Es necesario indicar si tiene o no experiencia</p>" 
                        Display="None" />
                    <ajaxToolkit:ValidatorCalloutExtender runat="Server" ID="vceExp" TargetControlID="rfExp"
                        HighlightCssClass="validatorCalloutHighlight" />
                </td>
            </tr>
            <tr>
                <td style="vertical-align: top;" class="tdlabel">
                    <label id="lbExpText">
                        <b>Indique su experiencia <span>*</span></b>
                    </label>
                </td>
                <td>
                    <asp:TextBox ID="tbExperiencia" runat="server" Width="571px" Rows="50" Height="100px"
                        TextMode="MultiLine" TabIndex="11" CssClass="tbExpDisable" Enabled="false"></asp:TextBox>
                    <asp:RequiredFieldValidator runat="server" ID="rfvTextoExp" ControlToValidate="tbExperiencia" EnableClientScript="true"
                        Display="None" ErrorMessage="<p class='inforequerida'><b>Información obligatoria</b><br/>Si tiene experiencia es necesario indicarla</p>" />
                    <ajaxToolkit:ValidatorCalloutExtender runat="Server" ID="vceTextoExp" TargetControlID="rfvTextoExp"
                        HighlightCssClass="validatorCalloutHighlight" Width="290px"/>
                </td>
            </tr>
            <tr>
                <td style="vertical-align: top;" class="tdlabel">
                    <label>
                        <b>Observaciones</b></label>
                </td>
                <td>
                    <asp:TextBox ID="tbObserv" runat="server" Width="571px" Rows="50" Height="100px"
                        TextMode="MultiLine" TabIndex="12"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="text-align: center; padding-left: 100px;" colspan="2">
                    <asp:UpdatePanel ID="UpdatePanelPrincipal" runat="server">
                        <ContentTemplate>
                            <asp:Button CssClass="frmShdwSubmit" ID="btnEnviar" runat="server" Text="Enviar solicitud"
                                OnClick="btnEnviar_Click" TabIndex="12" Height="26px" />
                            <input type="reset" id="btnDel" value="Borrar" class="frmShdwSubmit" style="height: 26px" />
                        </ContentTemplate>
                    </asp:UpdatePanel>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <label class="nota">
                        <b>Los campos marcados con <span>*</span> son obligatorios</b></label>
                </td>
            </tr>
        </table>
    </div>
    </form>
</asp:Panel>
<asp:Panel ID="solicok" runat="server" Visible="false">
    <div id="infoenvio">
        <p class="enviook">
            La candidatura ha sido correctamente remitida por correo electrónico
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
