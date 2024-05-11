<?php
use Illuminate\Support\Facades\DB;
class Form{
  //  public static function open_laravel($config){
  //       $config["route"]=isset($config["route"])?$config["route"]:""; 
       
    
  //     $html="<form class='form' action='".url($config["route"])."' method='post'>";
  //     $html.="<input type='hidden' name='_token' value='".csrf_token()."' />";
      
  //     if(isset($config["method"])){
  //       $html.="<input type='hidden' name='_method' value='".$config["method"]."' />";
  //     }
  //     return $html;
  //   }
    public static function open_laravel($config) {
      $config["route"] = isset($config["route"]) ? $config["route"] : ""; 
     
      $html = "<form class='form ' action='" . url($config["route"]) . "' method='post' enctype='multipart/form-data'>";
      $html .= csrf_field();
    
      if (isset($config["method"])) {
          $html .= method_field($config["method"]);
      }
      
      return $html;
    }


    public static function close(){
        $html="</form>";
        return $html;
    }
    
    // Form Functions
    // public static function select($config){
    //     // global $db,$tx; 
    //    $config["value"]=isset($config["value"])?$config["value"]:""; 
    //    $id=isset($config["value_column"])?$config["value_column"]:"id";  
    //    $name=isset($config["display_column"])?$config["display_column"]:"name";  
    
    //    $ucname=ucfirst($config["name"]);
    //    //echo "select $id,$name from {$tx}{$config["table"]}";
    //   //  $result=$db->query("select $id,$name from {$tx}{$config["table"]}");
    //   $result = DB::select("select $id,$name from {$config["table"]}");
    //    $html="<div class='form-group row'>";
    //    $html.="<label class='col-sm-2 col-form-label'>{$config["label"]}</label>";
    //    $html.="<div class='col-sm-10'>"; 
    //    $html.="<select name='{$config["name"]}' class='form-select' style='width:100%'>";
    //    while(list($id,$name)=$result->fetch_row()){
        
    //      if($id==$config["value"]){
    //        $html.="<option value='$id' selected>$name</option>";  
    //      }else{
    //        $html.="<option value='$id'>$name</option>";  
    //      }
     
    //    }
    //    $html.="</select>";
    //    $html.="</div>";
    //    $html.="</div>";
     
    //    return $html;
     
    //  }
    // public static function select($config){
    //   //  global $db,$tx
    //    $tx='core_';
    //    $config["value"]=isset($config["value"])?$config["value"]:""; 
    //    $id=isset($config["value_column"])?$config["value_column"]:"id";  
    //    $name=isset($config["display_column"])?$config["display_column"]:"name";  
    
    //    $ucname=ucfirst($config["name"]);
    //    $result = DB::select("select $id,$name from {$tx}{$config["table"]}");
    //    $html="<div class='row mb-3'>";
    //    $html.="<label class='col-sm-2 col-form-label'>{$config["label"]}</label>";
    //    $html.="<div class='col-sm-10'>"; 
    //    $html.="<select name='{$config["name"]}' class='form-select' style='width:100%'>";
       
    //    foreach ($result as $row) {
    //     $rowId = $row->{$id}; // Accessing object property
    //     $rowName = $row->{$name}; // Accessing object property
        
    //     if ($id == $config["value"]) {
    //         $html .= "<option value='{$rowId}' selected>{$rowName}</option>";  
    //     } else {
    //         $html .= "<option value='{$id}'>{$name}</option>";  
    //     }
    //   }
    //    $html.="</select>";
    //    $html.="</div>";
    //    $html.="</div>";
     
    //    return $html;
     
    //  }

    public static function select($config){
       
      $config["value"]=isset($config["value"])?$config["value"]:"";   
      $ucname=ucfirst($config["name"]);   
      
      $html="<div class='row mb-3'>";
      $html.="<label class='col-sm-2 col-form-label'>{$config["label"]}</label>";
      $html.="<div class='col-sm-10'>"; 
      $html.="<select name='{$config["name"]}' class='form-control' style='width:100%'>";
      foreach($config["table"] as $row){
       
        if($row->id==$config["value"]){
          $html.="<option value='$row->id' selected>$row->name</option>";  
        }else{
          $html.="<option value='$row->id'>$row->name</option>";  
        }
    
      }
      $html.="</select>";
      $html.="</div>";
      $html.="</div>";
    
      return $html;
    
    }
    public static function select1($config){
       
      $config["value"]=isset($config["value"])?$config["value"]:"";   
      $ucname=ucfirst($config["name"]);   
      
      $html="<div class='row mb-3'>";
      $html.="<label class='col-sm-2 col-form-label'>{$config["label"]}</label>";
      $html.="<div class='col-sm-10'>"; 
      $html.="<select name='{$config["name"]}' class='form-control' style='width:100%'>";
      foreach($config["table"] as $row){
       
        if($row->id==$config["value"]){
          if($row->code){
            $html.="<option value='$row->id' selected>$row->code</option>"; 
          }elseif($row->organization){
            $html.="<option value='$row->id' selected>$row->organization</option>";
          } 
        }else{
          if($row->code){
            $html.="<option value='$row->id'>$row->code</option>"; 
          }elseif($row->organization){
            $html.="<option value='$row->id'>$row->organization</option>";
          }
        }
    
      }
      $html.="</select>";
      $html.="</div>";
      $html.="</div>";
    
      return $html;
    
    }
     
     public static function button($config){
          $html="<div class='row'>";
          $html.="<div class='col-sm-12'>";
          $html.="<input type='{$config["type"]}' value='{$config["value"]}' name='{$config["name"]}' class='btn btn-info' />";
          $html.="</div>";
          $html.="</div>";
          return $html;
     }
    
       public static function field($config){
    
          $config["required"]=isset($config["required"])?$config["required"]:"";
          $config["placeholder"]=isset($config["placeholder"])?$config["placeholder"]:"";
          $config["value"]=isset($config["value"])?$config["value"]:"";     
          $config["type"]=isset($config["type"])?$config["type"]:"text"; 
          $config["checked"]=isset($config["checked"])?$config["checked"]:""; 
      
          $html="<div class='row mb-3'>";
    
           if($config["type"]!="hidden"){
            $html.="<label for='{$config["name"]}' class='col-sm-2 col-form-label'>{$config["label"]}</label>";
           }
    
           $style="";
           $css_class="form-control";
           if($config["type"]=="radio" || $config["type"]=="checkbox")
           {
            $css_class="form-check-input";
            $style="style='width:40px;height:40px;'";
           }
    
          $html.="<div class='col-sm-10'>";
          $html.="<input type='{$config["type"]}'  class='$css_class' $style name='{$config["name"]}' id='{$config["name"]}' value='{$config["value"]}' placeholder='{$config["placeholder"]}' {$config["required"]} {$config["checked"]}>";
          $html.="</div>";
          $html.="</div>";  
      
          return $html;
      
       }
    
       public static function text($config){
        
        $config["required"]=isset($config["required"])?$config["required"]:"";
        $config["required"]=isset($config["required"])?$config["required"]:"";
        $config["placeholder"]=isset($config["placeholder"])?$config["placeholder"]:"";
        $config["value"]=isset($config["value"])?$config["value"]:"";     
        $config["type"]=isset($config["type"])?$config["type"]:"text"; 
        $config["checked"]=isset($config["checked"])?$config["checked"]:""; 
    
        $html="<div class='row mb-3'>";
    
         if($config["type"]!="hidden"){
          $html.="<label for='{$config["name"]}' class='col-sm-2 col-form-label'>{$config["label"]}</label>";
         }
    
         $css_class="form-control";
         if($config["type"]=="radio" || $config["type"]=="checkbox")
         {
          $css_class="form-check-input";
         }
    
        $html.="<div class='col-sm-10'>";
        $html.="<input type='{$config["type"]}' class='$css_class' name='{$config["name"]}' id='{$config["name"]}' value='{$config["value"]}' placeholder='{$config["placeholder"]}' {$config["required"]} {$config["checked"]}>";

        $html.="</div>";
        $html.="</div>";  
    
        return $html;
    
     }
    
     public static function checkbox($config){
        $config["required"]=isset($config["required"])?$config["required"]:"";
        $config["placeholder"]=isset($config["placeholder"])?$config["placeholder"]:"";
        $config["value"]=isset($config["value"])?$config["value"]:"";     
        $config["type"]=isset($config["type"])?$config["type"]:"text"; 
        $config["checked"]=isset($config["checked"])?$config["checked"]:""; 
    
        $html="<div class='form-group row'>";
    
         if($config["type"]!="hidden"){
          $html.="<label for='{$config["name"]}' class='col-sm-2 col-form-label'>{$config["label"]}</label>";
         }
    
         $css_class="form-control";
         if($config["type"]=="radio" || $config["type"]=="checkbox")
         {
          $css_class="form-check-input";
         }
    
        $html.="<div class='col-sm-10'>";
        $html.="<input type='{$config["type"]}' class='$css_class' name='{$config["name"]}' id='{$config["name"]}' value='{$config["value"]}' placeholder='{$config["placeholder"]}' {$config["required"]} {$config["checked"]}>";
        $html.="</div>";
        $html.="</div>";  
    
        return $html;
       }
    
       public static function radio($config){
        $config["required"]=isset($config["required"])?$config["required"]:"";
        $config["placeholder"]=isset($config["placeholder"])?$config["placeholder"]:"";
        $config["value"]=isset($config["value"])?$config["value"]:"";     
        $config["type"]=isset($config["type"])?$config["type"]:"text"; 
        $config["checked"]=isset($config["checked"])?$config["checked"]:""; 
    
        $html="<div class='form-group row'>";
    
         if($config["type"]!="hidden"){
          $html.="<label for='{$config["name"]}' class='col-sm-2 col-form-label'>{$config["label"]}</label>";
         }
    
         $css_class="form-control";
         if($config["type"]=="radio" || $config["type"]=="checkbox")
         {
          $css_class="form-check-input";
         }
    
        $html.="<div class='col-sm-10'>";
        $html.="<input type='{$config["type"]}' class='$css_class' name='{$config["name"]}' id='{$config["name"]}' value='{$config["value"]}' placeholder='{$config["placeholder"]}' {$config["required"]} {$config["checked"]}>";
        $html.="</div>";
        $html.="</div>";  
    
        return $html;
       }
    
       public static function textarea($config){
        $config["required"]=isset($config["required"])?$config["required"]:"";
        $config["placeholder"]=isset($config["placeholder"])?$config["placeholder"]:"";
        $config["value"]=isset($config["value"])?$config["value"]:"";     
        $config["type"]=isset($config["type"])?$config["type"]:"text"; 
        $config["checked"]=isset($config["checked"])?$config["checked"]:""; 
    
        $html="<div class='form-group row'>";
    
         if($config["type"]!="hidden"){
          $html.="<label for='{$config["name"]}' class='col-sm-2 col-form-label'>{$config["label"]}</label>";
         }
    
         $css_class="form-control";
         if($config["type"]=="radio" || $config["type"]=="checkbox")
         {
          $css_class="form-check-input";
         }
    
        $html.="<div class='col-sm-10'>";
        $html.="<input type='{$config["type"]}' class='$css_class' name='{$config["name"]}' id='{$config["name"]}' value='{$config["value"]}' placeholder='{$config["placeholder"]}' {$config["required"]} {$config["checked"]}>";
        $html.="</div>";
        $html.="</div>";  
    
        return $html;
       }
    
       public static function file($config){
        $config["required"]=isset($config["required"])?$config["required"]:"";
        $config["placeholder"]=isset($config["placeholder"])?$config["placeholder"]:"";
        $config["value"]=isset($config["value"])?$config["value"]:"";     
        $config["type"]=isset($config["type"])?$config["type"]:"text"; 
        $config["checked"]=isset($config["checked"])?$config["checked"]:""; 
    
        $html="<div class='form-group row'>";
    
         if($config["type"]!="hidden"){
          $html.="<label for='{$config["name"]}' class='col-sm-2 col-form-label'>{$config["label"]}</label>";
         }
    
         $css_class="form-control";
         if($config["type"]=="radio" || $config["type"]=="checkbox")
         {
          $css_class="form-check-input";
         }
    
        $html.="<div class='col-sm-10'>";
        $html.="<input type='{$config["type"]}' class='$css_class' name='{$config["name"]}' id='{$config["name"]}' value='{$config["value"]}' placeholder='{$config["placeholder"]}' {$config["required"]} {$config["checked"]}>";
        $html.="</div>";
        $html.="</div>";  
    
        return $html;
       }
       
       public static function PrintDate($day="cmbDay",$month="cmbMonth",$year="cmbYear"){
    
        $html="";
        $html.="<select name='$day'>";
        for($d=1;$d<=30;$d++){
            $d=str_pad($d,2, '0', STR_PAD_LEFT); 
    
            if($d==str_pad(date("d"),2,'0',STR_PAD_LEFT)){
              $html.="<option value='$d' selected>$d</option>";
            }else{
              $html.="<option value='$d'>$d</option>";
            }
            
     
        }
        $html.="</select>";
     
        $html.="<select name='$month'>";
         $months=["Jan","Feb","Mar","Apr","May","Jun","Jul","Aug","Sep","Oct","Nov","Dec"];
        for($d=1;$d<=12;$d++){
            $d=str_pad($d,2,'0',STR_PAD_LEFT); 
            if($d==str_pad(date("m"),2,'0',STR_PAD_LEFT)){
              $html.="<option value='$d' selected>{$months[$d-1]}</option>";
            }else{
              $html.="<option value='$d'>{$months[$d-1]}</option>";
            }
     
        }
        $html.="</select>";
        $html.="<select name='$year'>";
        
       for($d=date("Y")-60;$d<=date("Y")+3;$d++){    
    
           if(date("Y")==$d){
             $html.="<option value='$d' selected>$d</option>";
           }else{
             $html.="<option value='$d'>$d</option>";
           }
    
       }
       $html.="</select>";
        return $html;
     }
     
     public static function PrintTime($hour="cmbHour",$min="cmbMin",$ampm="cmbAMPM"){
     
        $html="<select name='$hour'>";
        for($h=1;$h<=12;$h++){
           $h=str_pad($h,2, '0', STR_PAD_LEFT); 
           $html.="<option value='$h'>$h</option>";
        }
        $html.="</select>";
     
        $html.="<select name='$min'>";
        for($h=1;$h<=60;$h++){
            $h=str_pad($h,2, '0', STR_PAD_LEFT); 
           $html.="<option value='$h'>$h</option>";
        }
        $html.="</select>";
     
        $html.="<select name='$ampm'>";
        $html.="<option value='AM'>AM</option>";
        $html.="<option value='PM'>PM</option>";
        $html.="</select>";
       
         return $html;
     
     
     }
    


}

?>