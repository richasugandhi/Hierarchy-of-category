# Hierarchy-of-category


category table
     -------------
     id | title |
     1  | cat1  |
     2  | cat2  |
     3  | cat3  |
     -------------
     
     Sub Category table
     ----------------------
      id | cat_id | title
      1  |   2    |  subcat1
      2  |   3    |  subcat2
      3  |   1    |  subcat3
      4  |   1    |  subcat4
     -----------------------
     
     
      Sub sub Category table
     ----------------------------------------
      id | cat_id |  sub_cat_id | title
      1  |   2    |  1          | sub_subcat1
      2  |   3    |  2          | sub_subcat2
      3  |   1    |  3          | sub_subcat3
      4  |   1    |  4          | sub_subcat4
     -----------------------------------------
     
     
    <?php
        $conn = mysql_connect('localhost', 'root', '');
         mysql_select_db('test', $conn) or die(mysql_error());
         $result1 = mysql_query('SELECT * FROM category');
         while ($row = mysql_fetch_array($result1)) { 
             echo '<ul><li>'.$row['id']."a".'</li>'; 
             display_children($row['id']); 
             echo '</ul>';
         }
         
         function display_children($parent) {
            $result2 = mysql_query('SELECT * FROM sub_category ' .
                    'WHERE cat_id="' . $parent . '";');
            while ($row = mysql_fetch_array($result2)) {
                echo '<ul><li>'.'-'.$row['sub_catID'] . "b".'</li>';
                display_parentchildren($row['sub_catID'], $parent);
                 echo '</ul>';
            }
        }
        
        function display_parentchildren($subparents, $parent) {
            $result3 = mysql_query('SELECT * FROM sub_sub_category ' .
                    'WHERE cat_id="' . $parent . '" AND sub_cat_id="' . $subparents . '";');
            while ($row = mysql_fetch_array($result3)) {
                echo '<ul><li>'.'--'.$row['sub_subcatID'] . "c".'</li></ul>';
            }
        }
     ?>
