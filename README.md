## HW 07

------

> Make sure that you are limiting your solutions to functions and techniques covered in class. You can find a myriad of solutions to the problems listed in this assignment--some good and others not so good. So stick to the tried and true techniques covered in class. 
 
 
In a new R script load the `SP2022.csv` data file into an R object you'll name `dat`.


You will address the following bulleted operations in a single series of piping operations. In other words, there should be no intermediate object created in the code other than the final `dat1` object. I.e., your code chunk should start off as:

```r
dat1 <- dat %>%
          . . . %>%
          . . . %>%
          etc
```

When done, you will stage/commit your script to your `hw07` repo. Don't forget to push it to GitHub. This assignment will not be graded, but will be part of Friday's lab session.

*  Using the `case_when()` function covered in class on Wednesday, you will create a new column called `Size` that will be assigned the word `small` if `Reg < 10` (i.e. the number of registered students in a course is less than 10), the word `medium` if `10 <= Reg <= 22` and the word `large` if `Reg > 22`.  You will also add a condition that will check if `Reg` has a value in which case you will output an `NA` value. 

*  Another tidyverse package that we will make good use of in this course is `stringr`, a text manipulation package. One of its functions, `str_length()`, is used to [return the number of characters](https://mgimond.github.io/ES218/Week03d.html#Finding_the_length_of_a_string) in a character string. You will not that when R reads a CSV file, it will automatically assign `NA` to empty numeric, however, it will return an empty character cell for character columns. We really should replace these `0` length character cells with `NA`. So, for this step, you will replace all empty character cells with `NA`s using the `if_else()` function and the `str_length()` function. (This operation will be repeated many times for each character column, so feel free to use the `mutate_at` function).


* Another `stringr` function that you will use is the `str_split_fixed()` function. It is used to split a character string into separate parts based on a delimiter. You can read up on `str_split_fixed()`  on the [course website](https://mgimond.github.io/ES218/Week03d.html#Splitting_a_string_by_a_character). You will split the `Instructor` column into two new columns called `Last_name` and `First_name` using the comma `,` as the delimiter.


### In preparation for Friday's lab  session

Here are a few additional tips that might help you prepare for Friday' s group assignment:

   + Familiarize yourself with [timestamp operations](https://mgimond.github.io/ES218/Week02c.html#Operating_on_dates) (e.g. computing elapsed minutes between two time objects).
   + Another `stringr` function you will make use of on Friday is `str_detect()`. You can read up on it [here](https://mgimond.github.io/ES218/Week03d.html#checking-for-a-partial-match).
   + Review the functions covered this week in class.
