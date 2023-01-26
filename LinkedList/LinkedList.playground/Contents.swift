import UIKit


  public class ListNode {
      public var val: Int
      public var next: ListNode?
      public init() { self.val = 0; self.next = nil; }
      public init(_ val: Int) { self.val = val; self.next = nil; }
      public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
  }



func reverseBetween(_ head: ListNode?, _ left: Int, _ right: Int) -> ListNode? {
    /*
     start of the reversed = left - 1
     end of the reverse = right + 1
     left
     right
     
     start traversing linkedlist
     while < left
     start
     
     now need to reverse
     
     previous = nil
     current.next = previous
     current = current.next
     
     first.next = end
     listnode.next = current
     
     */
    
    
    
    
    return head
}
