import 'package:e_gem/generated/assets.dart';

class Strings {
  static const k_token = 'login_token';

  final Map<String, String> exercisesAndCals = {
    "Squats": "5-8 Cal/min",
    "Deadlifts": "6-9 Cal/min",
    "Bench Press": "3-6 Cal/min",
    "Shoulder Press": "3-5 Cal/min",
    "Pull-ups": "3-6 Cal/min",
    "Lunges": "3-5 Cal/min",
    "Plank": "2-4 Cal/min",
    "Dumbbell Rows": "3-5 Cal/min",
    "Bicep Curls": "2-4 Cal/min",
    "Tricep Dips": "3-5 Cal/min",
  };

  final Map<String, String> stepsAndReps = {
    "   - Stand with your feet shoulder-width apart."
            "- Lower your body by bending your knees and pushing your hips backward, as if you're sitting back into a chair."
            "- Keep your chest up and back straight."
            "- Push through your heels to return to the starting position.":
        "3*12 Reps",
    "   - Stand with your feet hip-width apart, toes under the barbell."
            "- Bend your knees, hinge at the hips, and grip the barbell with an overhand or mixed grip."
            "- Keep your back straight, chest up, and core engaged."
            "- Lift the barbell by straightening your legs and extending your hips."
            "- Pause at the top, then slowly lower the barbell back to the floor.":
        "3*10 Reps",
    "   - Lie on a bench with your feet flat on the floor."
            "- Grip the barbell slightly wider than shoulder-width apart."
            "- Lower the barbell to your chest while keeping your elbows at a 45-degree angle."
            "- Press the barbell back up to the starting position, extending your arms fully.":
        "3*12 Reps",
    "   - Sit or stand with a dumbbell in each hand, palms facing forward."
        "- Lift the dumbbells to shoulder height, elbows bent and level with your shoulders."
        "- Press the dumbbells upward until your arms are fully extended."
        "- Lower the dumbbells back to shoulder height.": "3*12 Reps",
    "- Hang from a pull-up bar with your palms facing away and hands shoulder-width apart."
        "- Engage your back and core muscles to pull your body upward until your chin clears the bar."
        "- Lower yourself back down with control.": "3*12 Reps",
    "   - Stand with your feet hip-width apart."
        "- Step forward with one leg, bending both knees until your front thigh is parallel to the floor and your back knee is hovering just above the ground."
        "- Push through your front heel to return to the starting position."
        "- Repeat on the opposite leg.": "3*15 Reps",
    "   - Place your forearms on the ground, aligning your elbows directly under your shoulders."
        "- Extend your legs behind you, toes on the floor."
        "- Engage your core, glutes, and leg muscles to maintain a straight line from your head to your heels."
        "- Hold for the desired duration.": "30 sec - 2 min",
    "   - Stand with a dumbbell in each hand, palms facing your body."
        "- Hinge forward at the hips, keeping your back straight."
        "- Pull the dumbbells up toward your chest, squeezing your shoulder blades together."
        "- Lower the dumbbells back down with control.": "3*12 Reps",
    "   - Stand with a dumbbell in each hand, palms facing forward."
        "- Keep your elbows close to your sides as you curl the dumbbells toward your shoulders."
        "- Pause at the top, then lower the dumbbells back down.": "3*12 Reps",
    "   - Sit on the edge of a bench or chair, facing forward."
            "- Place your hands on the edge of the bench, fingers pointing forward."
            "- Slide your hips off the bench and lower your body toward the floor by bending your elbows."
            "- Push through your hands to extend your arms and raise your body back up.":
        "3*12 Reps",
  };

  final List<String> url = [
    'https://app.fitnessai.com/exercises/00431201-Barbell-Full-Squat-Thighs.mp4',
    'https://app.fitnessai.com/exercises/00321201-Barbell-Deadlift-Hips.mp4',
    'https://app.fitnessai.com/exercises/00251201-Barbell-Bench-Press-Chest.mp4',
    'https://app.fitnessai.com/exercises/07651201-Smith-Seated-Shoulder-Press-Shoulders.mp4',
    'https://app.fitnessai.com/exercises/14291201-Wide-Grip-Pull-Up-Back.mp4',
    'https://app.fitnessai.com/exercises/03811201-Dumbbell-Rear-Lunge-Thighs.mp4',
    'https://app.fitnessai.com/exercises/04631201-Front-Plank-m-waist.mp4',
    'https://app.fitnessai.com/exercises/02921201-Dumbbell-Bent-over-Row-Back.mp4',
    'https://app.fitnessai.com/exercises/04161201-Dumbbell-Standing-Biceps-Curl-Upper-Arms.mp4',
    'https://app.fitnessai.com/exercises/13991201-Bench-dip-on-floor-Upper-Arms.mp4',
  ];
  var exeImg = [
    Asset.imagesSquats,
    Asset.imagesDeadlifts,
    Asset.imagesBenchPress,
    Asset.imagesShoulderPress,
    Asset.imagesPullUps,
    Asset.imagesLunges,
    Asset.imagesPlank,
    Asset.imagesDumbbellRows,
    Asset.imagesBicepCurls,
    Asset.imagesTricepDips,
  ];
}
