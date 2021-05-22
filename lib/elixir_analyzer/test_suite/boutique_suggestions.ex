defmodule ElixirAnalyzer.TestSuite.BoutiqueSuggestions do
  @moduledoc """
  This is an exercise analyzer extension module for the concept exercise Boutique Suggestions
  """

  use ElixirAnalyzer.ExerciseTest

  assert_call "uses list comprehensions" do
    type :essential
    called_fn name: :<-
    comment ElixirAnalyzer.Constants.boutique_suggestions_use_list_comprehensions()
  end

  assert_no_call "does not call any Enum functions" do
    type :essential
    called_fn module: Enum, name: :_
    comment ElixirAnalyzer.Constants.boutique_suggestions_use_list_comprehensions()
  end

  feature "does not alias or import Enum" do
    find :none
    type :essential
    comment ElixirAnalyzer.Constants.boutique_suggestions_use_list_comprehensions()

    form do
      import Enum
    end

    form do
      import Enum, _ignore
    end

    form do
      alias Enum, as: _ignore
    end
  end

  assert_no_call "does not call any Stream functions" do
    type :essential
    called_fn module: Stream, name: :_
    comment ElixirAnalyzer.Constants.boutique_suggestions_use_list_comprehensions()
  end

  feature "does not alias or import Stream" do
    find :none
    type :essential
    comment ElixirAnalyzer.Constants.boutique_suggestions_use_list_comprehensions()

    form do
      import Stream
    end

    form do
      import Stream, _ignore
    end

    form do
      alias Stream, as: _ignore
    end
  end

  assert_no_call "does not call any List functions" do
    type :essential
    called_fn module: List, name: :_
    comment ElixirAnalyzer.Constants.boutique_suggestions_use_list_comprehensions()
  end

  feature "does not alias or import List" do
    find :none
    type :essential
    comment ElixirAnalyzer.Constants.boutique_suggestions_use_list_comprehensions()

    form do
      import List
    end

    form do
      import List, _ignore
    end

    form do
      alias List, as: _ignore
    end
  end
end