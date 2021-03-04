from selenium import webdriver
import unittest
import page

class SparkAboutPageTest(unittest.TestCase):
    def setUp(self):
        self.driver = webdriver.Chrome()
        self.driver.get('https://www.thesparksfoundationsingapore.org/about/advisors-and-patrons/')
        self.driver.implicitly_wait(5)

    def test_logo(self):
        about_page = page.AboutUsPage(self.driver)
        assert about_page.is_logo_dispalyed()

    def test_navbar_appears(self):
        about_page = page.AboutUsPage(self.driver)
        assert about_page.navbar_appears()

    def test_advisors_images(self):
        about_page = page.AboutUsPage(self.driver)
        assert about_page.check_advisors_image()

    def tearDown(self):
        self.driver.close()

if __name__ == '__main__':
    unittest.main()
