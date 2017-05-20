class Toolsqa < SitePrism::Page
    set_url (SITE["SITE"])
    element :demoSite, "li", text: "DEMO SITES"
    element :automationForm, :xpath, ("html/body/div[1]/div[1]/header/nav/ul/li[8]/ul/li[3]/a/span[1]/span/span")
    element :firstName, ('input[name=firstname]')
    element :lastName, ('input[name=lastname]')
    element :sexo, ("#sex-0")
    element :experience, ("#exp-2")
    element :dataNasc, ("#datepicker")
    element :profissao, ("#profession-1")
    element :anexo, ("#photo")
    element :toolQtp, ("#tool-0")
    element :toolSelenium, ("#tool-2")
    element :continente, ("#continents")
    element :botao, ("#submit")
end