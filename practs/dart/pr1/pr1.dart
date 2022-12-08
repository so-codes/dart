void main() {
  
  String rev(int num){

    String nstr = num.toString();
    nstr = nstr.split('').reversed.join('');
    return nstr;
  }
  
  print(rev(5346));
}