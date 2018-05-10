class DemoQA < SitePrism::Page

    element :btn_registration, ".menu-registration-container"
    element :menu_about, "#menu-item-158"

    def clicar_registration
        btn_registration.click    
    end

end