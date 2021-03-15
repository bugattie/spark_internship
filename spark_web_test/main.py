from selenium import webdriver
import unittest
import page


class SparkMainPageTest(unittest.TestCase):
    def setUp(self):
        self.driver = webdriver.Chrome()
        self.driver.get('https://www.thesparksfoundationsingapore.org/')
        self.driver.implicitly_wait(5)

    def test_logo(self):
        main_page = page.MainPage(self.driver)
        assert main_page.is_logo_dispalyed()

    def test_title(self):
        main_page = page.MainPage(self.driver)
        assert main_page.is_title_matches()

    def test_navbar_appears(self):
        main_page = page.MainPage(self.driver)
        assert main_page.navbar_appears()

    def test_slider(self):
        main_page = page.MainPage(self.driver)
        assert main_page.slider_clickable()

    def test_scrollable_button(self):
        main_page = page.MainPage(self.driver)
        assert main_page.scrollable_btn()
        

    def tearDown(self):
        self.driver.close()


if __name__ == '__main__':
    unittest.main()