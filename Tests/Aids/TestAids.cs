using System.ComponentModel;
using System.Reflection;

namespace Abc.Tests.Aids;

public abstract class TestAids<TClass> where TClass : class, new() {
    protected TClass obj;
    protected const BindingFlags publicDeclared = BindingFlags.Public
        | BindingFlags.DeclaredOnly
        | BindingFlags.Instance
        | BindingFlags.Static;

    protected static IEnumerable<string> getProperties() => Abc.Aids.GetType.PropertyNames<TClass>(publicDeclared);

    protected static IEnumerable<string> getMethods() => Abc.Aids.GetType.MethodNames<TClass>(publicDeclared, false);

    protected void isProperty<T>(string name) {
        var p = typeof(TClass).GetProperty(name);
        Assert.IsNotNull(p, noProperty<T>(name));
        Assert.AreEqual(typeof(T), p.PropertyType, wrongType<T>(name, p));
    }

    private string wrongType<T>(string name, PropertyInfo p) {
        return $"Property {name} in {typeof(TClass).Name} is of type {p.PropertyType.Name} instead of {typeof(T).Name}";
    }

    private string noProperty<T>(string name) {
        return $"There is no property {name} in {typeof(TClass).Name}";
    }
}