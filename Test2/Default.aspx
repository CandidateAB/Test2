<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Test2._1._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
        
    <asp:Wizard ID="Wizard1" runat="server" ActiveStepIndex="0" Height="365px" Width="465px">
        <FinishNavigationTemplate>
            <asp:Button ID="FinishPreviousButton" runat="server" CausesValidation="False" CommandName="MovePrevious" Text="Назад" />
        </FinishNavigationTemplate>
        <SideBarTemplate>
            <asp:DataList ID="SideBarList" runat="server">
                <ItemTemplate>
                    <asp:LinkButton ID="SideBarButton" runat="server"></asp:LinkButton>
                </ItemTemplate>
                <SelectedItemStyle Font-Bold="True" />
            </asp:DataList>
        </SideBarTemplate>
        <StartNavigationTemplate>
            <asp:Button ID="StartNextButton" runat="server" CommandName="MoveNext" Text="Далее" />
        </StartNavigationTemplate>
        <StepNavigationTemplate>
            <asp:Button ID="StepPreviousButton" runat="server" CausesValidation="False" CommandName="MovePrevious" Text="Назад" />
            <asp:Button ID="StepNextButton" runat="server" CommandName="MoveNext" Text="Далее" />
        </StepNavigationTemplate>
        <WizardSteps>
            <asp:WizardStep runat="server" title="Шаг 1">
                <asp:Label ID="Label1" runat="server" Text="Имя"></asp:Label><br/>
                <asp:TextBox ID="FirstName" runat="server"></asp:TextBox><br/>
                <asp:Label ID="Label2" runat="server" Text="Фамилия"></asp:Label><br/>
                <asp:TextBox ID="LastName" runat="server"></asp:TextBox><br/>
                <asp:Label ID="Label3" runat="server" Text="Отчество"></asp:Label><br/>
                <asp:TextBox ID="Patronymic" runat="server"></asp:TextBox><br/>
                <asp:Label ID="Label4" runat="server" Text="Дата рождения"></asp:Label><br/>
                <asp:TextBox ID="BirthDate" runat="server"></asp:TextBox><br/>
                <asp:Label ID="Label5" runat="server" Text="Пол"></asp:Label>
                <asp:RadioButtonList ID="Sex" runat="server">
                    <asp:ListItem Value="0" Selected="True">Мужской</asp:ListItem>
                    <asp:ListItem Value="1">Женский</asp:ListItem>
                </asp:RadioButtonList><br/>
            </asp:WizardStep>
            <asp:WizardStep runat="server" title="Шаг 2">
                <asp:Label ID="Label6" runat="server" Text="Серия и номер паспорта"></asp:Label><br/>
                <asp:TextBox ID="PassNu" runat="server"></asp:TextBox><br/>
                <asp:Label ID="Label7" runat="server" Text="Кем выдан"></asp:Label><br/>
                <asp:TextBox ID="PassGiven" runat="server"></asp:TextBox><br/>
                <asp:Label ID="Label8" runat="server" Text="Когда выдан"></asp:Label><br/>
                <asp:TextBox ID="PassDate" runat="server"></asp:TextBox><br/>
            </asp:WizardStep>
            <asp:WizardStep runat="server" Title="Шаг 3">
                <asp:Label ID="Label9" runat="server" Text="Образование"></asp:Label><br/>
                <asp:DropDownList ID="Education" runat="server">
                    <asp:ListItem Value="0">Среднее</asp:ListItem>
                    <asp:ListItem Value="1">Неполное среднее</asp:ListItem>
                    <asp:ListItem Value="2">Высшее</asp:ListItem>
                    <asp:ListItem Value="3">Неоконченное высшее</asp:ListItem>
                </asp:DropDownList><br/>
                <asp:Label ID="Label10" runat="server" Text="Семейное положение"></asp:Label><br/>
                <asp:DropDownList ID="Marital" runat="server">
                    <asp:ListItem Value="0">Холост/Не замужем</asp:ListItem>
                    <asp:ListItem Value="1">Женат/Замужем</asp:ListItem>
                </asp:DropDownList><br/>
                <asp:Label ID="Label11" runat="server" Text="Хобби"></asp:Label><br/>
                <asp:CheckBoxList ID="Hobbies" runat="server">
                    <asp:ListItem>Музыка</asp:ListItem>
                    <asp:ListItem>Кино</asp:ListItem>
                    <asp:ListItem>Спорт</asp:ListItem>
                </asp:CheckBoxList><br/>
            </asp:WizardStep>
            <asp:WizardStep runat="server" Title="Шаг 4">
                <div class="panel">
                    <asp:Label ID="Label12" runat="server" Text="Имя:"></asp:Label>
                    <asp:Label ID="uFirstName" runat="server"></asp:Label><br/>
                    <asp:Label ID="Label14" runat="server" Text="Фамилия:"></asp:Label>
                    <asp:Label ID="uLastName" runat="server"></asp:Label><br/>
                    <asp:Label ID="Label16" runat="server" Text="Отчество:"></asp:Label>
                    <asp:Label ID="uPatronymic" runat="server"></asp:Label><br/>
                    <asp:Label ID="Label18" runat="server" Text="Дата рождения:"></asp:Label>
                    <asp:Label ID="uBirthDate" runat="server"></asp:Label><br/>
                    <asp:Label ID="Label20" runat="server" Text="Пол:"></asp:Label>
                    <asp:Label ID="uSex" runat="server"></asp:Label><br/>
                    <asp:Label ID="Label22" runat="server" Text="Серия и номер паспорта:"></asp:Label>
                    <asp:Label ID="uPassNu" runat="server"></asp:Label><br/>
                    <asp:Label ID="Label24" runat="server" Text="Кем выдан:"></asp:Label>
                    <asp:Label ID="uPassGiven" runat="server"></asp:Label><br/>
                    <asp:Label ID="Label26" runat="server" Text="Когда выдан:"></asp:Label>
                    <asp:Label ID="uPassDate" runat="server"></asp:Label><br/>
                    <asp:Label ID="Label28" runat="server" Text="Образование:"></asp:Label>
                    <asp:Label ID="uEducation" runat="server"></asp:Label><br/>
                    <asp:Label ID="Label30" runat="server" Text="Семейное положение:"></asp:Label>
                    <asp:Label ID="uMarital" runat="server"></asp:Label><br/>
                    <asp:Label ID="Label32" runat="server" Text="Хобби:"></asp:Label>
                    <asp:Label ID="uHobbies" runat="server"></asp:Label><br/>
                </div>
            </asp:WizardStep>
        </WizardSteps>
    </asp:Wizard>
    <p>
    </p>
        
</asp:Content>
