## read categories.txt in, parse each line
## generate commands to insert category lattice
## data into the subject_lattice table
##
## Example: insert into subject_lattice values('physics', 'physics education', 'arxiv');

FILE_NAME = "categories.txt"
READ_MODE = "r"
DASH = "-"

def parseLine(line)
   child = true
   ln = line.downcase().split()
   ## find dash
   $dashPos = ln.find_index(DASH)
   ##if $dashPos == nil
   ##   puts "dashpos: nil"
   ##else
   ##   puts "dashPos: " + $dashPos.to_s 
   ##end
   if $dashPos == nil
      $endCatPos = ln.length
      child = false
   else
      $endCatPos = $dashPos 
   end
   #puts "endCatPos: " + $endCatPos.to_s

    $beginCatPos = 1

    $i = 1;
    #puts $i.class
    category = ""
    begin
       category = category + ln[$i] + " "
       #puts "endCatPos: #{$endCatPos} $i: #{$i} " + ln.to_s
       $i += 1
    end until $i >= $endCatPos 

    if child
       $i = $dashPos + 1
       $endCatPos = ln.length
       childCat = ""
       begin
          childCat = childCat + ln[$i] + " "
          #puts "endCatPos: #{$endCatPos} $i: #{$i} " + ln.to_s
          $i += 1
       end until $i >= $endCatPos 
    end

    if child
       puts "insert into subject_lattice values(\'#{category.chop!}\', \'#{childCat.chop!}\', \'arxiv\');"
    else
       puts "insert into subject_lattice values(\'#{category.chop!}\', \'NULL\', \'arxiv\');"
    end

   if child
       puts "insert into subject_category values(\'#{ln[0]}\',\'#{category}\', \'#{childCat}\', \'arxiv\');"
    else
       puts "insert into subject_category values(\'#{ln[0]}\',\'#{category}\', \'NULL\', \'arxiv\');"
    end
  
   
   ##puts ln.first + " " + ln.last
end

## open file
fileObj = File.open(FILE_NAME, READ_MODE)
fileObj.each_line do |line|
  parseLine(line)
end


## parse file & generate sql insertion commands

## close file
fileObj.close

