using FluentAssertions;
using POS.Models;
using System.ComponentModel.DataAnnotations;
using System.Reflection;

namespace POS.Tests
{
    public class UnitTest1
    {
        
        [Fact]
        public void UserName_MaxLength()
        {
            var propertyInfo = typeof(Customer).GetProperty("Name");
            var stringLengthAttribute = propertyInfo.GetCustomAttribute<StringLengthAttribute>();

            stringLengthAttribute.Should().NotBeNull();
            stringLengthAttribute.MaximumLength.Should().Be(100);
        }

        [Fact]
        public void UserPhoneNumber_MaxLength()
        {
            var propertyInfo = typeof(Customer).GetProperty("PhoneNumber");
            var stringLengthAttribute = propertyInfo.GetCustomAttribute<StringLengthAttribute>();

            stringLengthAttribute.Should().NotBeNull();
            stringLengthAttribute.MaximumLength.Should().Be(20);
        }

        [Fact]
        public void UserEmail_MaxLength()
        {
            var propertyInfo = typeof(Customer).GetProperty("Email");
            var stringLengthAttribute = propertyInfo.GetCustomAttribute<StringLengthAttribute>();

            stringLengthAttribute.Should().NotBeNull();
            stringLengthAttribute.MaximumLength.Should().Be(100);
        }

        
    }

}