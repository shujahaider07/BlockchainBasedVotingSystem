<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="voteForm.aspx.cs" Inherits="BlockchainBasedVotingSystem.voteForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
 <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
      
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.0/sweetalert.min.js"></script>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.0/sweetalert.min.css" rel="stylesheet" type="text/css" />

    <link rel="stylesheet" href="style.css">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<link href="https://fonts.googleapis.com/css2?family=Bebas+Neue&display=swap" rel="stylesheet">
    <link
    rel="stylesheet"
    href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css"/>
  <link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Inter+Tight:wght@300&display=swap" rel="stylesheet">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Bebas+Neue&display=swap" rel="stylesheet">
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
 
    <link rel="stylesheet" href="style.css">
    <script src="https://tympanus.net/Development/AnimatedHeaderBackgrounds/js/TweenLite.min.js"></script>
    <script src="https://tympanus.net/Development/AnimatedHeaderBackgrounds/js/EasePack.min.js"></script>
    <script src="https://tympanus.net/Development/AnimatedHeaderBackgrounds/js/rAF.js"></script>
</head>
<body>
    <form id="form1" runat="server">
       
     <div class="nav ">
        <div class="Quiz-heading"><p class="logo-quiz">E-Voting System</p></div>
  </div>
    <div id="large-header" class="large-header">
       

		<div class="form1">
      <h1 class="Vote-heading">Select Your Party</h1>
            <div class="container animate__animated animate__fadeInLeft">
                <div class="row">
                  <div class="col-lg-4 col-md-6 col-sm-12">
                    <div class="card"  >
                        <img src="images/Flag_of_the_Pakistan_Tehreek-e-Insaf.svg.png" class="card-img-top" alt="...">
                        <div class="card-body">
                          <h5 class="card-title">PTI(Pakistan-Tehreek-e-Insaf</h5>
                          <button type="button" class="vote-button"  data-bs-toggle="modal" data-bs-target="#exampleModal" >Vote Now</button>
                            <asp:TextBox ID="ptitxt" Visible="false" Text="PTI" runat="server"></asp:TextBox>
                            <!-- Button trigger modal -->


<!-- Modal -->

                          
                        </div>
                      </div>
                  </div>
                  <div class="col-lg-4 col-md-6 col-sm-12">
                    <div class="card" >
                        <img src="images/ppp.png" class="card-img-top" alt="...">
                        <div class="card-body">
                          <h5 class="card-title">(PPP)Pakistan-Peoples-Party</h5>
                          <button type="button" class="vote-button" data-bs-toggle="modal" target="#exampleModal1" data-bs-target="#exampleModal1" >Vote Now</button>
                            <asp:TextBox ID="ppptxt" Text="PPP" ReadOnly="false" Visible="false" runat="server"></asp:TextBox>
                        </div>
                      </div>
                  </div>
                  <div class="col-lg-4 col-md-6 col-sm-12">
                    <div class="card">
                      <img src="images/Jamaat-e-Islami_Pakistan_Flag.svg.png" class="card-img-top" alt="...">
                      <div class="card-body">
                        <h5 class="card-title">(JIP Jamaat-e-Islami-Pakistan)</h5>
                        <button type="button" class="vote-button" data-bs-toggle="modal" target="#exampleModal2" data-bs-target="#exampleModal2" >Vote Now</button>
                          <asp:TextBox ID="JIptxt" Text="JIP" Visible="false" ReadOnly="true" runat="server"></asp:TextBox>
                          </div>
                    </div>
                  </div>
                </div>
              </div>
              <div class="container animate__animated animate__fadeInLeft">
                <div class="row">
                  <div class="col-lg-4 col-md-6 col-sm-12">
                    <div class="card">
                        <img src="images/Pak_Sarzameen_Party_PSP_Flag.png" class="card-img-top"  alt="...">
                        <div class="card-body">
                          <h5 class="card-title">PSP(Pak-Sar-Zameen-Party)</h5>
                          <button type="button" class="vote-button" data-bs-toggle="modal" target="#exampleModal3" data-bs-target="#exampleModal3" >Vote Now</button>
                            <asp:TextBox ID="psptxt" Text="PSP" Visible="false" ReadOnly="true"  runat="server"></asp:TextBox>
                        </div>
                      </div>
                  </div>
                  <div class="col-lg-4 col-md-6 col-sm-12">
                    <div class="card" >
                        <img src="images/Awami_National_Party_flag.png" class="card-img-top" height="160px" alt="...">
                        <div class="card-body">
                          <h5 class="card-title">(ANP)Awami-National-Party</h5>
                          <button type="button" class="vote-button" data-bs-toggle="modal" target="#exampleModal4"  data-bs-target="#exampleModal4" >Vote Now</button>
                            <asp:TextBox ID="anptxt" Text="ANP" Visible="false" ReadOnly="true"  runat="server"></asp:TextBox>
                        </div>
                      </div>
                      
                  </div>
                  <div class="col-lg-4 col-md-6 col-sm-12">
                    <div class="card" >
                        <img src="images/1280px-Flag_of_the_Muttahida_Qaumi_Movement.svg.png" class="card-img-top" height="160px" alt="...">
                        <div class="card-body">
                          <h5 class="card-title">(MQM)Mutehda-Qaumi-Movement</h5>
                          <button type="button" class="vote-button" data-bs-toggle="modal" target="#exampleModal5" data-bs-target="#exampleModal5" >Vote Now</button>
                            <asp:TextBox ID="MQmtxt" Text="MQM" Visible="false" ReadOnly="true" runat="server"></asp:TextBox>
                            </div>
                      </div>
                      
                  </div>
               
                </div>
              </div>
              <div class="container animate__animated animate__fadeInLeft">
                <div class="row">
                  <div class="col-lg-4 col-md-6 col-sm-12">
                    <div class="card"  >
                        <img src="images/1200px-Flag_of_JUI.svg.png" class="card-img-top"  alt="...">
                        <div class="card-body">
                          <h5 class="card-title">JUI(Jamiat-e-Ulma-Islami)</h5>
                          <button type="button" class="vote-button" data-bs-toggle="modal" target="#exampleModal6" data-bs-target="#exampleModal6" >Vote Now</button>
                            <asp:TextBox ID="juitxt" Text="JUI" Visible="false" ReadOnly="true" runat="server"></asp:TextBox>
                        </div>
                      </div>
                  </div>
                  <div class="col-lg-4 col-md-6 col-sm-12">
                    <div class="card" >
                        <img src="images/TLP_Flag.png" class="card-img-top" height="160px" alt="...">
                        <div class="card-body">
                          <h5 class="card-title">(TLP)Tehreek-Labbaik-Pakistan</h5>
                          <button type="button" class="vote-button" data-bs-toggle="modal" target="#exampleModal7" data-bs-target="#exampleModal7" >Vote Now</button>
                            <asp:TextBox ID="tlptxt" Text="TLP" Visible="false" ReadOnly="true" runat="server"></asp:TextBox>
                            </div>
                      </div>
                      
                  </div>
                  <div class="col-lg-4 col-md-6 col-sm-12">
                    <div class="card" >
                        <img src="images/PMLN_2021_Flag.png" class="card-img-top" height="160px" alt="...">
                        <div class="card-body">
                          <h5 class="card-title">(PMLN)Pakistan-Muslim-League-Nawaz</h5>
                          <button type="button" class="vote-button" data-bs-toggle="modal" target="#exampleModal8" data-bs-target="#exampleModal8" >Vote Now</button>
                            <asp:TextBox ID="pmlntxt" Text="PMLN" Visible="false" ReadOnly="true" runat="server"></asp:TextBox>
                        </div>
                      </div>
                      
                  </div>
               
                </div>
              </div>
              
  </div>

        <canvas id="demo-canvas"></canvas>

     

      </div>
        <%--PTI MODAL --%>

      <div class="modal fade" id="exampleModal" tabindex="0" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog">
          <div class="modal-content">
            <div class="modal-header" >
              <h5 class="modal-title" id="exampleModalLabel">Confirm Vote</h5>
              <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
          
              <br>
           
                <asp:TextBox ID="emailtxt" ReadOnly="true" runat="server"></asp:TextBox>
              <br>
            
                <asp:TextBox ID="cnictxt" ReadOnly="true" runat="server"></asp:TextBox>
              <br>
              
             

            </div>
            <div class="modal-footer">
              
             
                <asp:Button ID="Ptibtn" class="btn confirm-btn" runat="server" OnClick="Button1_Click" Text="Confirm" />
            </div>
          </div>
        </div>
      </div>
        
        <%-- ppp modal --%>

      <div class="modal fade" id="exampleModal1" tabindex="0" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog">
          <div class="modal-content">
            <div class="modal-header" >
              <h5 class="modal-title" id="exampleModalLabel">Confirm Vote</h5>
              <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
            
              <br>
            
                <asp:TextBox ID="pppemailtxt" ReadOnly="true" runat="server"></asp:TextBox>
              <br>
             
                <asp:TextBox ID="pppcnictxt" ReadOnly="true" runat="server"></asp:TextBox>
              <br>
              
              

            </div>
            <div class="modal-footer">
              
              <%--<button type="button" class="btn confirm-btn">Confirm</button>--%>
                <asp:Button ID="Btnppp" class="btn confirm-btn" runat="server" OnClick="Btnppp_Click"  Text="Confirm" />
            </div>
          </div>
        </div>
      </div>



        <%-- jip modal --%>

        <div class="modal fade" id="exampleModal2" tabindex="0" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog">
          <div class="modal-content">
            <div class="modal-header" >
              <h5 class="modal-title" id="exampleModalLabel">Confirm Vote</h5>
              <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
              <%--<input type="nametxt" class="modal-input">--%>
                <%--<asp:TextBox ID="T" runat="server"></asp:TextBox>--%>
              <br>
              <%--<input type="emailtxt" class="modal-input" >--%>
                <asp:TextBox ID="jpiemailtxt" ReadOnly="true" runat="server"></asp:TextBox>
              <br>
              <%--<input type="cnictxt" class="modal-input">--%>
                <asp:TextBox ID="jpicnictxt" ReadOnly="true" runat="server"></asp:TextBox>
              <br>
              
              <%--<input type="" class="modal-input">--%>

            </div>
            <div class="modal-footer">
              
              <%--<button type="button" class="btn confirm-btn">Confirm</button>--%>
                <asp:Button ID="jpibtn" class="btn confirm-btn" runat="server" OnClick="jpibtn_Click"  Text="Confirm" />
            </div>
          </div>
        </div>
      </div>


        <%-- PSP modal --%>

        <div class="modal fade" id="exampleModal3" tabindex="0" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog">
          <div class="modal-content">
            <div class="modal-header" >
              <h5 class="modal-title" id="exampleModalLabel">Confirm Vote</h5>
              <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
              <%--<input type="nametxt" class="modal-input">--%>
                <%--<asp:TextBox ID="T" runat="server"></asp:TextBox>--%>
              <br>
              <%--<input type="emailtxt" class="modal-input" >--%>
                <asp:TextBox ID="pspemailtxt" ReadOnly="true" runat="server"></asp:TextBox>
              <br>
              <%--<input type="cnictxt" class="modal-input">--%>
                <asp:TextBox ID="pspcnictxt" ReadOnly="true" runat="server"></asp:TextBox>
              <br>
              
              <%--<input type="" class="modal-input">--%>

            </div>
            <div class="modal-footer">
              
              <%--<button type="button" class="btn confirm-btn">Confirm</button>--%>
                <asp:Button ID="pspBtn" class="btn confirm-btn" runat="server" OnClick="pspBtn_Click" Text="Confirm" />
            </div>
          </div>
        </div>
      </div>

        <%-- ANP modal --%>
        

        <div class="modal fade" id="exampleModal4" tabindex="0" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog">
          <div class="modal-content">
            <div class="modal-header" >
              <h5 class="modal-title" id="exampleModalLabel">Confirm Vote</h5>
              <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
              <%--<input type="nametxt" class="modal-input">--%>
                <%--<asp:TextBox ID="T" runat="server"></asp:TextBox>--%>
              <br>
              <%--<input type="emailtxt" class="modal-input" >--%>
                <asp:TextBox ID="anpemailtxt" ReadOnly="true" runat="server"></asp:TextBox>
              <br>
              <%--<input type="cnictxt" class="modal-input">--%>
                <asp:TextBox ID="anpcnictxt" ReadOnly="true" runat="server"></asp:TextBox>
              <br>
             
              <%--<input type="" class="modal-input">--%>

            </div>
            <div class="modal-footer">
              
              <%--<button type="button" class="btn confirm-btn">Confirm</button>--%>
                <asp:Button ID="ANPbtn" class="btn confirm-btn" runat="server" OnClick="ANPbtn_Click"  Text="Confirm" />
            </div>
          </div>
        </div>
      </div>

        <%--MQM Modal  --%>

        <div class="modal fade" id="exampleModal5" tabindex="0" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog">
          <div class="modal-content">
            <div class="modal-header" >
              <h5 class="modal-title" id="exampleModalLabel">Confirm Vote</h5>
              <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
              <%--<input type="nametxt" class="modal-input">--%>
                <%--<asp:TextBox ID="T" runat="server"></asp:TextBox>--%>
              <br>
              <%--<input type="emailtxt" class="modal-input" >--%>
                <asp:TextBox ID="mqmemailtxt" ReadOnly="true" runat="server"></asp:TextBox>
              <br>
              <%--<input type="cnictxt" class="modal-input">--%>
                <asp:TextBox ID="mqmCnictxt" ReadOnly="true" runat="server"></asp:TextBox>
              <br>
             
              <%--<input type="" class="modal-input">--%>

            </div>
            <div class="modal-footer">
              
              <%--<button type="button" class="btn confirm-btn">Confirm</button>--%>
                <asp:Button ID="mqmBtn" class="btn confirm-btn" runat="server" OnClick="mqmBtn_Click"  Text="Confirm" />
            </div>
          </div>
        </div>
      </div>

        <%--  JUI MODAL --%>
        <div class="modal fade" id="exampleModal6" tabindex="0" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog">
          <div class="modal-content">
            <div class="modal-header" >
              <h5 class="modal-title" id="exampleModalLabel">Confirm Vote</h5>
              <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
              <%--<input type="nametxt" class="modal-input">--%>
                <%--<asp:TextBox ID="T" runat="server"></asp:TextBox>--%>
              <br>
              <%--<input type="emailtxt" class="modal-input" >--%>
                <asp:TextBox ID="Juiemailtxt" ReadOnly="true" runat="server"></asp:TextBox>
              <br>
              <%--<input type="cnictxt" class="modal-input">--%>
                <asp:TextBox ID="Juicnictxt" ReadOnly="true" runat="server"></asp:TextBox>
              <br>
              
              <%--<input type="" class="modal-input">--%>

            </div>
            <div class="modal-footer">
              
              <%--<button type="button" class="btn confirm-btn">Confirm</button>--%>
                <asp:Button ID="JuiBtn" class="btn confirm-btn" runat="server" OnClick="JuiBtn_Click"  Text="Confirm" />
            </div>
          </div>
        </div>
      </div>
        <%-- TLP --%>

        <div class="modal fade" id="exampleModal7" tabindex="0" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog">
          <div class="modal-content">
            <div class="modal-header" >
              <h5 class="modal-title" id="exampleModalLabel">Confirm Vote</h5>
              <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
              <%--<input type="nametxt" class="modal-input">--%>
                <%--<asp:TextBox ID="T" runat="server"></asp:TextBox>--%>
              <br>
              <%--<input type="emailtxt" class="modal-input" >--%>
                <asp:TextBox ID="Tlpemailtxt" ReadOnly="true" runat="server"></asp:TextBox>
              <br>
              <%--<input type="cnictxt" class="modal-input">--%>
                <asp:TextBox ID="Tlpcnictxt" ReadOnly="true" runat="server"></asp:TextBox>
              <br>
              
              <%--<input type="" class="modal-input">--%>

            </div>
            <div class="modal-footer">
              
              <%--<button type="button" class="btn confirm-btn">Confirm</button>--%>
                <asp:Button ID="TlpBtn" class="btn confirm-btn" runat="server" OnClick="TlpBtn_Click"  Text="Confirm" />
            </div>
          </div>
        </div>
      </div>
        <%-- PMLN --%>

        <div class="modal fade" id="exampleModal8" tabindex="0" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog">
          <div class="modal-content">
            <div class="modal-header" >
              <h5 class="modal-title" id="exampleModalLabel">Confirm Vote</h5>
              <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
            
              <br>
              
                <asp:TextBox ID="pmlnEmailtxt" ReadOnly="true" runat="server"></asp:TextBox>
              <br>
             
                <asp:TextBox ID="pmlnCnictxt" ReadOnly="true" runat="server"></asp:TextBox>
              <br>
             

            </div>
            <div class="modal-footer">
              
              <%--<button type="button" class="btn confirm-btn">Confirm</button>--%>
                <asp:Button ID="PmlnBtn" class="btn confirm-btn" runat="server" OnClick="PmlnBtn_Click"  Text="Confirm" />
            </div>
          </div>
        </div>
      </div>
      <script src="app.js"></script>

    </form>
</body>
</html>
