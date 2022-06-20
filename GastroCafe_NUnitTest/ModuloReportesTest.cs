using System;
using System.Collections.Generic;
using OpenQA.Selenium;
using OpenQA.Selenium.Firefox;
using NUnit.Framework;

namespace GastroCafe_NUnit
{
    [TestFixture]
    public class ModuloReportesTest
    {
        private const string nombre_dominio = "localhost:63408";
        private IWebDriver driver;
        public IDictionary<string, object> vars { get; private set; }
        private IJavaScriptExecutor js;
        [SetUp]
        public void SetUp()
        {
            driver = new FirefoxDriver(Environment.CurrentDirectory);
            js = (IJavaScriptExecutor)driver;
            vars = new Dictionary<string, object>();
        }
        [TearDown]
        protected void TearDown()
        {
            driver.Quit();
        }

        public void IniciarSesion()
        {
            driver.Navigate().GoToUrl("http://" + nombre_dominio + "/Account/Login");
            driver.FindElement(By.Id("Email")).SendKeys("gastrocafe@gmail.com");
            driver.FindElement(By.Id("Password")).SendKeys("gastroCafe_123");
            driver.FindElement(By.CssSelector(".btn")).Click();
        }

        [Test]
        public void CP_ConsultarPlatilloMasVendido()
        {
            IniciarSesion();
            driver.FindElement(By.LinkText("Reportes")).Click();
            driver.FindElement(By.LinkText("Platillos más vendidos")).Click();
            //Assert.That(driver.FindElement(By.CssSelector("tr:nth-child(1) > td:nth-child(1)")).Text, Is.EqualTo("Jugo de limón"));
            var elements = driver.FindElements(By.CssSelector("td:nth-child(1)"));
            Assert.True(elements.Count > 0);
        }
        [Test]
        public void CP_ConsultarPrecioInsumoComprado()
        {
            IniciarSesion();
            driver.FindElement(By.LinkText("Reportes")).Click();
            driver.FindElement(By.LinkText("Precios insumos comprados")).Click();
            var elements = driver.FindElements(By.CssSelector("td:nth-child(1)"));
            Assert.True(elements.Count > 0);
        }
        [Test]
        public void CP_ConsultarPreciosReceta()
        {
            IniciarSesion();
            driver.FindElement(By.LinkText("Reportes")).Click();
            driver.FindElement(By.LinkText("Precios de las recetas")).Click();
            var elements = driver.FindElements(By.CssSelector("td:nth-child(1)"));
            Assert.True(elements.Count > 0);
        }
    }
}
