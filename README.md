



<h1 align="center">🧱 Mason Bricks - <code>by Mahmoud Saad</code></h1>

<p align="center">
  A collection of reusable <strong>Mason bricks</strong> for generating feature-based and clean architecture code in your Flutter projects.
</p>

---

## ⚙️ Install Mason CLI

To use this brick, first install the Mason CLI globally:
 Install it
 You can install the package from the command line:
```bash
  dart pub global activate mason_cli
```
```bash
  dart pub add mason_cli
```
## 📦 Available Bricks 
<h4>Add clean_code Brick </h4>  

Generate clean code structure and base files

```bash
  mason add --global clean_code --git-url https://github.com/mahmoud0saad/bricks.git --git-path clean_code

  mason make  clean_code
 ```

<h4>Add new feature Brick </h4>  

Brick Generate a new feature folder (data, domain, presentation)

**Note:**  

Use this brick while inside the `lib/features/<feature>` directory to generate the files in the correct feature structure.

```bash 
  mason add --global new_feature --git-url https://github.com/mahmoud0saad/bricks.git --git-path new_feature

  mason make new_feature
```

 
<h4>Add usecase Brick </h4>  

Generates a Clean Architecture `UseCase` class in the domain layer of your Flutter project.  
Includes logic for calling the proper repository function and handling parameters with strong typing.

**Note:**  

Use this brick while standing inside the `lib/features/<feature>/domain/usecase` directory to ensure the usecase file is generated in the correct place.


```bash
  mason add --global usecase --git-url https://github.com/mahmoud0saad/bricks.git --git-path usecase

  mason make usecase \  --usecaseName=enterName \  --feature=cart \  --modelName=orderModel \  --paramsName=CreateOrderParams  
 ```
 
 
<h4>Add freezed model Brick </h4>  

Generates a Dart model class using the `freezed` and `json_serializable` packages.  

```bash
  mason add --global freezed_model --git-url https://github.com/mahmoud0saad/bricks.git --git-path freezed_model

  mason make freezed_model 
 ```
