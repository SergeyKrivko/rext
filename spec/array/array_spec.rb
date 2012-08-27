require "spec_helper.rb"
require File.expand_path("../../../lib/rext/array/array.rb", __FILE__)

describe Array do
  # Блок, который подготавливает тестируемый класс.
  # before_all принимает блок кода, который выполняется
  # один раз перед всеми примерами. (примерами называются it/its блоки)

  before(:all) do
    Array.instance_eval { include Rext::Array }
  end

  subject { [0, 1, 2, 3, 4, 5] }  # Меняем стандартный субъект

  it "returns every 0 element with #every(0)" do
    subject.every(0).should == []
  end

  it "returns every 1st element with #every(1)" do
    subject.every(1).should == subject
  end

  it "returns every 2 element with #every(2)" do
    subject.every(2).should == [1, 3, 5]
  end

  it "returns every 4th element with #every(4)" do
    subject.every(4).should == [3]
  end

  it "returns every 5th element with #every(5)" do
    subject.every(5).should == [4]
  end

  its (:odd)  { should == [1, 3, 5] }
  its (:even) { should == [0, 2, 4] }

end
