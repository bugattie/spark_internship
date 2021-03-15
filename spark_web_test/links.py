from selenium import webdriver
import unittest
import page

class SparkLinkPageTest(unittest.TestCase):
    def setUp(self):
        self.driver = webdriver.Chrome()
        self.driver.get('https://www.thesparksfoundationsingapore.org/links/ai-in-education/')
        self.driver.implicitly_wait(5)
    
    def test_logo(self):
        link_page = page.MainPage(self.driver)
        assert link_page.is_logo_dispalyed()

    def test_title(self):
        link_page = page.MainPage(self.driver)
        assert link_page.is_title_matches()

    def test_navbar_appears(self):
        link_page = page.MainPage(self.driver)
        assert link_page.navbar_appears()

    def test_join_us_link(self):
        link_page = page.LinkPage(self.driver)
        assert link_page.JoinUSLinks()

    def test_heading_link(self):
        link_page = page.LinkPage(self.driver)
        assert link_page.HeadLinkTest()

    def test_btn_link(self):
        link_page = page.LinkPage(self.driver)
        assert link_page.BtnLinkTest()

    def tearDown(self):
        self.driver.close()

if __name__ == '__main__':
    unittest.main()