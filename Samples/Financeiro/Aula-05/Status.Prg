/*  SOBRE A IDE
    ==============================================================================================
    Gerado pela IDE Designer
    #Define VERSION_PRODUCT "00.99.20.083 RELEASE CANDIDATE (RC) 200921 1743"
    Vers�o Minigui:  Harbour MiniGUI Extended Edition 20.08 (Update 3)  Grigory Filatov <gfilatov@inbox.ru>
    Vers�o Harbour/xHarbour: Harbour 3.2.0dev (r2008190002)
    Compilador : MinGW GNU C 10.2 (32-bit)
    ----------------------------------------------------------------------------------------------
    SOBRE ESTE C�DIGO GERADO:
    �ltima altera��o : 22/09/2020-16:44:43 M�quina: IMA2018 Usu�rio:ivani
    C�digo do m�dulo Status
    ----------------------------------------------------------------------------------------------
    Projeto : Financeiro
    */

#include <hmg.ch>
memvar hAcesso

Function LoadFrmStatus
    Load window Status as Status
    Status.Center()
    Status.activate()

    Return .T.

    ***********************************************
    ///////////////////////////////////////////////
    ***********************************************
Static Function Status_Oninit( )
    Status.TITLE :="Status do Usu�rio: "+hAcesso["apelido"]
    Status.Control_1a.value := ": "+hAcesso["nivel"]
    Status.Control_2a.value := ": "+IIF(hAcesso["incluir"],"SIM","N�o")
    Status.Control_3a.value := ": "+IIF(hAcesso["alterar"],"SIM","N�o")
    Status.Control_4a.value := ": "+IIF(hAcesso["excluir"],"SIM","N�o")
    Status.Control_5a.value := ": "+IIF(hAcesso["relatorio"],"SIM","N�o")
    Status.Control_6a.value := ": "+Dtoc(hAcesso["vencimento"])
    Return .T.
