defmodule PatternMatching do
  def swap() do
    {}
  end

  def swap({ f, s }) do
    {s, f}
  end

  def same({ a, a }) do
    true
  end

  def same({a, b}) do
    false
  end
end
