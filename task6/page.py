from locator import *
from time import sleep


class BasePage(object):
    def __init__(self, driver):
        self.driver = driver

    def is_logo_dispalyed(self):
        logo = self.driver.find_element(*MainPageLocator.LOGO)
        return logo.is_displayed()

    def navbar_appears(self):
        navbar = self.driver.find_element(*MainPageLocator.NAVBAR)
        return navbar.is_displayed()

class MainPage(BasePage):

    def is_title_matches(self):
        return "Home" in self.driver.title

    def slider_clickable(self):
        slider = self.driver.find_elements(*MainPageLocator.SLIDER_LINKS)
        words = ['Events', 'Internships', 'Mentorship', 'Support', 'Scholarship', 'Community']
        matches = []

        for i in range(len(slider)):
            sleep(1)
            slider[i].click()
            word_from_web = self.driver.find_element(*MainPageLocator.WORD).get_attribute('innerHTML')
            matches.append(word_from_web in words)
            if matches[i] == False:
                print(f'{word_from_web} is not found.')
            sleep(1)
        
        return True

    def scrollable_btn(self):
        self.driver.execute_script("window.scrollTo(0, document.body.scrollHeight);")
        sleep(1)
        scroll_up = self.driver.find_element(*MainPageLocator.UP_BTN)
        scroll_up.click()
        sleep(2)
        return True

    def check_footer(self):
        word_to_check = "All Rights Reserved"
        f_element = self.driver.find_element(*MainPageLocator.F_PARA).text
        return word_to_check in f_element

class AboutUsPage(BasePage):
    def check_advisors_image(self):
        advisor_images = self.driver.find_elements(*AboutUsPageLocator.ADVISORS_IMAGES)
        advisor_details = self.driver.find_elements(*AboutUsPageLocator.ADVISORS_DETAILS)
        for i in range(len(advisor_images)):
            if (advisor_images[i].is_displayed()):
                print(f"{advisor_details[i].text} image is displaying.")
            else:
                print(f"{advisor_details[i].text} image is not displaying")
            
        return True
        


