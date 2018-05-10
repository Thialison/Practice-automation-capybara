class Home < SitePrism::Page
    set_url (SITE["SITE"])

    element :menu_demo_sites, "#primary-menu > li:nth-child(8) > a"
    element :basic_demo_sites, "#primary-menu > li:nth-child(8) > ul > li:nth-child(2)"

    def acessar_demo_sites
        menu_demo_sites.hover
        basic_demo_sites.click
        while has_menu_demo_sites?
            last_window
        end
    end

    def last_window
        page.driver.browser.switch_to.window(page.driver.browser.window_handles.last)
    end

end