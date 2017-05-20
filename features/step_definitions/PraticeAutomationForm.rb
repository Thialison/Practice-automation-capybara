Dado(/^que eu acesso a página Automation Form$/) do

    @Page = Toolsqa.new()
    @Page.load
    # find('li', :text => 'DEMO SITES')
    @Page.demoSite.hover
    @Page.automationForm.click
end

Quando(/^preencher as informações pessoais$/) do

    #@Page.firstName.set (INF["INFORMACOES"]["FIRSTNAME"])
    #@Page.lastName.set (INF["INFORMACOES"]["LASTNAME"])
    @Page.firstName.set(Faker::HarryPotter.character)
    @Page.lastName.set(Faker::Name.last_name)
    @Page.sexo.click
    @Page.experience.click
    @Page.dataNasc.set(INF["INFORMACOES"]["DATANASCIMENTO"])
    @Page.profissao.click

    attach_file("photo", 'C:\Users\Tayson\Pictures\tédio.jpg')

    @Page.toolQtp.click
    @Page.toolSelenium.click
    @Page.continente.select (INF["INFORMACOES"]["CONTINENTE"])

end

Então(/^clico no botão confirmar$/) do

    #binding.pry
    @Page.botao.click
    expect(@Page).to have_content(INF["INFORMACOES"]["EXPECT"])

end