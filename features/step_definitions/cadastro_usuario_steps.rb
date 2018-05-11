Dado("que estou no site DemoQA") do
    @home = Home.new()
    @home.load
    @home.acessar_demo_sites
end
  

Quando("preencher as informações de cadastro válidas") do
    @demo = DemoQA.new()
    @cadastro = Cadastro.new()
    @demo.clicar_registration
    @cadastro.preencher_cadastro
end

Quando("preencher as informações de cadastro com dados já existentes") do
    @demo = DemoQA.new()
    @cadastro = Cadastro.new()
    @demo.clicar_registration
    @cadastro.preencher_cadastro_existente
end

Quando("clicar em confirmar") do
    @cadastro.clicar_confirmar
end

Então("devo visualizar mensagem de sucesso") do
    mensagem = @cadastro.valida_cadastro
    expect(mensagem).to be true
end

Então("devo visualizar mensagem de erro") do
    mensagem = @cadastro.valida_mensagem_usuario_existente
    expect(mensagem).to be true
end