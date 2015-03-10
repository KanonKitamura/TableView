//
//  ViewController.m
//  album
//
//  Created by kanon kitamura on 2015/02/26.
//  Copyright (c) 2015年 myname. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    sotugyo_TableView.delegate=self;
    sotugyo_TableView.dataSource=self;
   
    // Do any additional setup after loading the view, typically from a nib.
    
    nameArray=[[NSMutableArray alloc]initWithObjects:@"アナザー",
               @"かのん",
               @"たけ",
               @"まっすー",nil];
    
    imageArray=[[NSMutableArray alloc]
                initWithObjects:[UIImage imageNamed:@"アナザー.jpg"],
                [UIImage imageNamed:@"かのん.jpg"],[UIImage imageNamed:@"TAKE.jpg"],[UIImage imageNamed:@"まっすー.jpg"],
                nil];
    
    
    messageArray=[[NSMutableArray alloc]initWithObjects:@"LifeisTech Mentor",
                  @"一般中学生",@"LifeisTech Mentor",@"LifeisTechSchool塾長",nil];
    
    syokaiArray=[[NSMutableArray alloc]initWithObjects:@"木曜EXPERT授業で私たちの面倒を　いつも見てくれる面白いメンターさん",@"木曜ステージで一番花粉症が酷い人",@"アナザーさんと一緒に優しく教えて　くれる笑顔が素敵なメンターさん",@"去年からずっとお世話になってる　とっても話しやすいメンターさん", nil];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.

   }//セルの数を数える
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:
(NSInteger)section{
    return [nameArray count];
}

//セルの初期化
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:
(NSIndexPath *)indexPath{
    PersonTableViewCell  *cell=[tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
  
    //セルに情報入れる
    cell.name_label.text=[nameArray objectAtIndex:indexPath.row];
    
    
    cell.profileImageView.image=
    [imageArray objectAtIndex:indexPath.row];
    
    cell.syokaiLabel.text=[syokaiArray objectAtIndex:indexPath.row];
    
 
    
    return cell;}


//セルを選択したときの動作
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{

    NSString *title=[nameArray objectAtIndex:indexPath.row];
 NSString *message=[messageArray objectAtIndex:indexPath.row];
   
    
    UIAlertView *alertView=[[UIAlertView alloc]initWithTitle:title message:message delegate:self cancelButtonTitle:@"わかった" otherButtonTitles:nil, nil];
    
   
      
    
    [alertView show];
    
    //配列を使おうね(◞‸◟)
    
    
}

@end
 