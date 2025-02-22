
void main() {
Book book1=Book('hello world','Ram', '2076/12/30', true);
Book book2=Book('hello Sun','Shyam', '2076/12/31', true);
Book book3=Book('hello moon','Hari', '2076/12/32', true);
Library library=Library();

library.addBook(book1);
library.addBook(book2);
library.addBook(book3);
library.listBooks();

Member member=Member('Ram', 'Kathmandu', '9841234567');
Member member2=Member('shyam','Bhaktapur', '9841234568');
library.issuebook(book1, member);
library.listBooks();
library.issuebook(book2, member2);
library.listBooks();
library.bookissuefor(member);
}   
class Book {
    String title;
    String author;  
    String isbn;
    bool isavailable;
    Book(this.title, this.author, this.isbn, this.isavailable);

}
class Library{
    List<Book> books=[];
    List<Issue> issuebooks=[];
    void addBook(Book book){
        books.add(book);
    }
    void listBooks(){
        for(Book book in books){
         print('Title: ${book.title} Author: ${book.author} available: ${book.isavailable}');
         
        }
    }
    void removevook(Book book){
        books.remove(book);
    }
    void issuebook(Book book, Member member){
        if(book.isavailable){
            book.isavailable=false;
            issuebooks.add(Issue(book, member, DateTime.now().toString()));
        }else {
            print('Book is not available');
        }
    }
    void listavailablebooks(){
        for(Book book in books){
            if(book.isavailable){
                print('Title: ${book.title} Author: ${book.author} available: ${book.isavailable}');
            }
        }
    }
    void bookissuefor(Member member){
        for(Issue issue in issuebooks){
            if(issue.member==member){
                print('Title: ${issue.book.title} Author: ${issue.book.author} Issue Date: ${issue.issuedate} to ${member.name}');
            }
        }
    }

}
class Member{
    String name;
    String address;
    String phone;
    Member(this.name, this.address, this.phone);
}
class Issue{
    Book book;
    Member member;
    String issuedate;
    DateTime? returndate;
    Issue(this.book, this.member,  this.issuedate,[this.returndate]);

    void returnbook(){
        returndate=DateTime.now();
        book.isavailable=true;
    }
}
