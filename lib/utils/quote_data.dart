class QuoteModel
{
  String? author;
  String? quotes;
  List <QuoteModel> quoteModelist=[];

  QuoteModel({this.author,this.quotes});

  factory QuoteModel.formQuotes(Map m1)
  {
    return QuoteModel(author: m1['author'],quotes: m1['quotes']);
  }

  void quoteModelToList(List l1)
  {
    for(int i=0;i<l1.length;i++)
    {
      quoteModelist.add(QuoteModel.formQuotes(l1[i]));
    }
  }

}
