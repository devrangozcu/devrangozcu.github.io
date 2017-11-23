<%@ Page Title="" Language="VB" MasterPageFile="~/Master.master" AutoEventWireup="false" CodeFile="AnketOlustur.aspx.vb" Inherits="AnketOlustur" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="container">
        <p>
            <br />
        </p>

        <div class="panel col-md-12">
            <h2 class="panel panel-heading">Anket İçeriği</h2>
            <div class="form-group">
                <label>Anket Başlığı</label>
                <input id="txtbaslik" type="text" class="form-control" />
            </div>
            <div class="form-group">
                <label>Açıklama</label>
                <textarea id="txtaciklama" rows="5" class="form-control"></textarea>
            </div>
            <div class="form-group" id="secenekler">
                <label>Seçenekler</label>
                <input type="button" id="secenekekle" value="Seçenek Ekle" class="btn btn-default " />
                <input type="text" class="form-control anketsecenekler" />
            </div>

            <p class="clearfix"></p>
            <input type="button" id="secenekeskle" value="Anketi Yayımla" class="btn btn-success" />
            <label class="label label-danger" id="lbluyari"></label>
            <p class="clearfix"></p>
            <div class="alert alert-info">
                <p>İptal etmek istediğiniz seçeneği boş bırakınız.</p>
                <p>Boş seçenekler eklenmeyecektir.</p>
            </div>
        </div>


    </div>


    <script>
        $("#secenekekle").click(function () {
            $("#secenekler").append("<input type='text' class='form-control anketsecenekler' />");
        });




        $("#secenekeskle").click(function () {
            if ($("#txtbaslik").val() != "" & $("#txtaciklama").val() != "") {
                $("#lbluyari").text("");
                var secenekler = "";
                var seceneksayisi = 0;

                $('.anketsecenekler').each(function (index, value) {
                    if ($(this).val().trim().replace('|', '') != "") {
                        if (secenekler != "") {
                            secenekler += "|" + $(this).val().trim().replace('|', '');
                            seceneksayisi++;
                        }
                        else {
                            secenekler = $(this).val().trim().replace('|', '');
                            seceneksayisi++;
                        }
                    }
                });

                if (seceneksayisi > 1) {
                    $("#lbluyari").text("Anket Başarıyla Oluştu");
                }
                else {
                    $("#lbluyari").text("En iki seçenek ekleyin!");
                }



            }
            else {
                $("#lbluyari").text("Tüm Alanları Doldurun!!");
            }
        });

    </script>

    <style>
        .anketsecenekler {
            margin-top: 15px;
        }
    </style>
</asp:Content>

