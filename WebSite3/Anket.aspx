<%@ Page Title="" Language="VB" MasterPageFile="~/Master.master" AutoEventWireup="false" CodeFile="Anket.aspx.vb" Inherits="Anket" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">


   <div class="container">

        <div>
            <div class="panel panel-heading">
                <h2>
                    <span id="ContentPlaceHolder1_labelbaslik">deneme anket  1 </span>
            </h2></div>
            
            <div class="panel panel-body">
                <span id="ContentPlaceHolder1_labelaciklama">deneme anket açıklama 1 </span>
            </div>
            <div id="ContentPlaceHolder1_anketicerik" class="panel panel-body onayla">
                <fieldset>
                    <div class="radiodiv"><input type="radio" name="radio" id="radio0" data-id="5" class="radio"><label for="radio0">deneme anket seçenek 1</label></div><div class="radiodiv"><input type="radio" name="radio" id="radio1" data-id="6" class="radio"><label for="radio1">deneme anket seçenek 2</label></div><div class="radiodiv"><input type="radio" name="radio" id="radio2" data-id="7" class="radio"><label for="radio2">deneme anket seçenek 3</label></div>
                </fieldset>
                <div style="text-align: right">
                    <input id="btnsecimiyolla" class="btn btn-lg btn-success" type="button" value="Seçimi Yolla">
                </div>
            </div>
            <div class="panel panel-footer">
                <span id="ContentPlaceHolder1_labelkullanici">Anketi Oluşturan: admin admin</span>
            </div>
        </div>
    </div>
  


    

    <style>
        .radiodiv {
            clear: both;
            margin: 0 50px;
        }

        label {
            width: 100%;
            border-radius: 3px;
            border: 1px solid #D1D3D4;
        }

        /* hide input */
        input.radio:empty {
            margin-left: -999px;
        }

            /* style label */
            input.radio:empty ~ label {
                position: relative;
                float: left;
                line-height: 2.5em;
                text-indent: 3.25em;
                margin-top: 2em;
                cursor: pointer;
                -webkit-user-select: none;
                -moz-user-select: none;
                -ms-user-select: none;
                user-select: none;
            }

                input.radio:empty ~ label:before {
                    position: absolute;
                    display: block;
                    top: 0;
                    bottom: 0;
                    left: 0;
                    content: '';
                    width: 2.5em;
                    background: #D1D3D4;
                    border-radius: 3px 0 0 3px;
                }

        /* toggle hover */
        input.radio:hover:not(:checked) ~ label:before {
            content: '\2714';
            text-indent: .9em;
            color: #C2C2C2;
        }

        input.radio:hover:not(:checked) ~ label {
            color: #888;
        }

        /* toggle on */
        input.radio:checked ~ label:before {
            content: '\2714';
            text-indent: .9em;
            color: #9CE2AE;
            background-color: #4DCB6D;
        }

        input.radio:checked ~ label {
            color: #777;
        }

        /* radio focus */
        input.radio:focus ~ label:before {
            box-shadow: 0 0 0 3px #999;
        }

        .bulunamadi {
            margin-top: 5%;
            text-align: center;
        }

        body {
            background-color: #fafafa;
        }
    </style>

</asp:Content>

