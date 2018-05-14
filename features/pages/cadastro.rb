class Cadastro < SitePrism::Page

    element :sucess_message, ".piereg_message"
    element :error_message, ".piereg_login_error"
    element :input_first_name, "#name_3_firstname"
    element :input_last_name, "#name_3_lastname"
    element :radio_single_status, "#pie_register > li:nth-child(2) > div > div > input:nth-child(2)"
    element :radio_reading_hobby, "#pie_register > li:nth-child(3) > div > div > input:nth-child(4)"
    element :select_country, "#dropdown_7"
    element :select_month, "#mm_date_8"
    element :select_day, "#dd_date_8"
    element :select_year, "#yy_date_8"
    element :input_phone, "#phone_9"
    element :input_user, "#username"
    element :input_email, "#email_1"
    element :input_bio, "#description"
    element :input_pass, "#password_2"
    element :input_confirm_pass, "#confirm_password_password_2"

    def preencher_cadastro
        input_first_name.set "Thialison"
        input_last_name.set "Souza"
        radio_single_status.click
        radio_reading_hobby.click
        select_country.select "Brazil"
        select_month.select "10"
        select_day.select "2"
        select_year.select "1990"
        input_phone.set "559029038489"
        input_user.set Faker::Name.first_name
        input_email.set Faker::Internet.email
        input_bio.set "Testador Ágil"
        input_pass.set "Descubra123455@"
        input_confirm_pass.set "Descubra123455@"
    end

    def preencher_cadastro_existente
        input_first_name.set "Thialison"
        input_last_name.set "Souza"
        radio_single_status.click
        radio_reading_hobby.click
        select_country.select "Brazil"
        select_month.select "10"
        select_day.select "2"
        select_year.select "1990"
        input_phone.set "559029038489"
        input_user.set "Tayson"
        input_email.set Faker::Internet.email
        input_bio.set "Testador Ágil"
        input_pass.set "Descubra123455@"
        input_confirm_pass.set "Descubra123455@"
    end

    def clicar_confirmar
        click_button("Submit")
    end

    def valida_cadastro
        valida = has_sucess_message?
    end

    def valida_mensagem_usuario_existente
        valida = has_error_message?
    end


end