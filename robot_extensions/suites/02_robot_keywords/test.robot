*** Settings ***
Resource        first_resource.robot
#Resource        SecondResource.robot
#Suite Setup     Set Library Search Order    SecondResource   FirstResource

*** Test Cases ***
Foo test
    Foo

Explicit Foo
    first_resource.foo
#    First_Resource.Foo
