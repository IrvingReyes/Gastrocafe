// Generated by Selenium IDE
using System;
using System.Collections.Generic;
using OpenQA.Selenium;
using OpenQA.Selenium.Firefox;
using NUnit.Framework;

namespace GastroCafe_NUnit
{

    [TestFixture]
    public class ModuloInventarioTest
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

        //Para este caso de prueba debe existir un insumo con una presentaci�n y no debe existir ning�n insumo en el inventario
        [Test]
        public void CP_Registrarcompras()
        {
            IniciarSesion();
            driver.Navigate().GoToUrl("http://" + nombre_dominio + "/Insumos/AgregarCompras");
            driver.FindElement(By.CssSelector("h2")).Click();
            driver.FindElement(By.CssSelector(".spanBtn")).Click();
            driver.FindElement(By.Id("cantundefined")).Clear();
            driver.FindElement(By.Id("cantundefined")).SendKeys("10");
            driver.FindElement(By.Id("btnRegistrarCompras")).Click();
            driver.Navigate().GoToUrl("http://" + nombre_dominio + "/Insumos/ConsultarInventario");
            var elements = driver.FindElements(By.CssSelector("h2"));
            Assert.True(elements.Count > 0);
        }

        //Para este caso de prueba debe existir al menos un insumo en el inventario
        [Test]
        public void CP_Consultarinventario()
        {
            IniciarSesion();
            driver.Navigate().GoToUrl("http://" + nombre_dominio + "/Insumos/ConsultarInventario");
            var elements = driver.FindElements(By.CssSelector("h2"));
            Assert.True(elements.Count > 0);
        }
    }
}