using Abc.Aids;

namespace Abc.Tests.Aids;

public abstract class BaseTests<TClass> : TestAids<TClass> where TClass: class, new() {    
    private TClass obj;    
    [TestInitialize] public void Initialize() => obj = new TClass();
    [TestMethod] public void CanCreateTest() => Assert.IsNotNull(obj);
    [TestMethod]
    public void IsClassCorrectTest()
    {
        var className = typeof(TClass).Name;
        var testClassName = GetType().Name;
        Assert.AreEqual(className + "Tests", testClassName);
    }
    [TestMethod] public void IsClassTestedTest() {
        var testMethods = GetType().GetMethods().Select(x => x.Name);
        var membersToTest = getProperties().Concat(getMethods());
        foreach (var m in membersToTest) {
            if(!testMethods.Contains(m + "Test")) {
                Assert.Inconclusive($"{m} is not tested");
            }
        }
    }
}
