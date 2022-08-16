class FooController < ApplicationController
  # クラスインスタンス変数
  @foo ||= 0

  def index
    # グローバル変数 $foo
    $foo ||= 0
    $foo += 1
    p "グローバル変数: #{$foo}"

    # クラス変数 @@foo
    @@foo ||= 0
    @@foo += 1
    p "クラス変数: #{@@foo}"

    # クラスインスタンス変数
    self.class.instance_variable_set(:@foo, self.class.instance_variable_get(:@foo)+1)
    p "クラスインスタンス変数: #{self.class.instance_variable_get(:@foo)}"

    # インスタンス変数 @foo
    @foo ||= 0
    @foo += 1
    p "インスタンス変数: #{@foo}"

    # スレッドローカル変数 Thread.current[:foo]
    Thread.current[:foo] ||= 0
    Thread.current[:foo] += 1
    p "スレッドローカル変数: #{Thread.current[:foo]}"
  end
end
