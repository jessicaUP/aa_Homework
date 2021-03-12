  class Stack
    def initialize
        @stack = []
      # create ivar to store stack here!
    end

    def push(el)
      # adds an element to the stack
      @stack.push(el)
    end

    def pop
        @stack.pop(el)
      # removes one element from the stack
    end

    def peek
        @stack[-1]
      # returns, but doesn't remove, the top element in the stack
    end
  end