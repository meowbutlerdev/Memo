# 메모 앱 프로젝트

### 학습 목표
1. UITableView 사용: 데이터 리스트를 화면에 표시하고, 동적으로 업데이트하는 방법 익히기
2. UserDefaults 활용: 데이터를 저장하고 앱 재실행 시 복원하기
3. Auto Layout: 화면 크기에 따라 UI를 적절히 배치하기
4. 사용자 입력 처리: UITextField와 UIAlertController를 활용하여 사용자 입력값 받기

### 구현할 기능
1. 메모 추가:
    - `+` 버튼을 눌러 새로운 메모 추가
    - 추가된 메모는 리스트에 표시
2. 메모 삭제:
    - 리스트에서 특정 메모를 스와이프하여 삭제
3. 데이터 저장:
    - 앱 종료 후에도 메모 리스트가 유지되도록 UserDefaults를 활용해 데이터 저장 및 불러오기

### 요구 사항
1. UITableView:
    - 메모 리스트를 표시하는 UITableView를 화면에 추가
    - 각 셀에 메모 내용을 표시
2. UIButton (Navigation Bar):
    - 오른쪽 상단에 `+` 버튼을 추가하여 새로운 메모를 입력받기
3. UIAlertController:
    - `+` 버튼을 눌렀을 때 나타나는 텍스트 입력 팝업(Alert)

### 결과물
![Memo](./image/Memo.gif)
