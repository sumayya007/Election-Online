
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"></script>
<script src="http://ajax.aspnetcdn.com/ajax/jquery.ui/1.8.9/jquery-ui.js" type="text/javascript"></script>
<link href="http://ajax.aspnetcdn.com/ajax/jquery.ui/1.8.9/themes/start/jquery-ui.css"
    rel="stylesheet" type="text/css" />
<script type="text/javascript">
    $("[id*=btnPopup]").live("click", function () {
        $("#dialog").dialog({
            title: "jQuery Dialog Popup",
            buttons: {
                Close: function () {
                    $(this).dialog('close');
                }
            }
        });
        return false;
    });
</script>
<div id="dialog" style="display: none">
    This is a simple popup
</div>
<form runat="server">
<asp:Button ID="btnPopup" runat="server" Text="Show Popup" />
</form>