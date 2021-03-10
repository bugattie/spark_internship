from selenium import webdriver
import unittest
import page

class SparkAboutPageTest(unittest.TestCase):
    def setUp(self):
        self.driver = webdriver.Chrome()
        self.driver.get('https://www.thesparksfoundationsingapore.org/programs/workshops/')
        self.driver.implicitly_wait(5)

    def test_logo(self):
        workshop_page = page.WorkshopPage(self.driver)
        assert workshop_page.is_logo_dispalyed()

    def test_navbar_appears(self):
        workshop_page = page.WorkshopPage(self.driver)
        assert workshop_page.navbar_appears()

    def test_heading(self):
        workshop_page = page.WorkshopPage(self.driver)
        assert workshop_page.heading_test()

    def test_upcoming_workshops(self):
        workshop_page = page.WorkshopPage(self.driver)
        assert workshop_page.upcoming_workshop_btn_test()

    def test_scroll_btn(self):
        workshop_page = page.WorkshopPage(self.driver)
        assert workshop_page.scroll_btn()

    def test_footer(self):
        workshop_page = page.WorkshopPage(self.driver)
        assert workshop_page.footer_appearance()

    def tearDown(self):
        self.driver.close()

if __name__ == '__main__':
    unittest.main()
