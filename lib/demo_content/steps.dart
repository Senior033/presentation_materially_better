const List<DemoStep> demoSteps = const <DemoStep>[
  DemoStep(
    title: 'Create the plan',
    content: 'Get pumped!',
  ),
  DemoStep(
    title: 'Setup tab navigation',
    content: 'Ur gonna say: Wow, that was fast!',
  ),
  DemoStep(
    title: 'Create color palette',
    content: 'Ur gonna say: Oooh, pretty!',
  ),
  DemoStep(
    title: 'Add a drawer',
    content: 'Ur gonna say: Come on, no drawer is that easy!',
  ),
  DemoStep(
    title: 'Add theme controls to drawer',
    content: 'Ur gonna say: Stop flipping the light switch!',
  ),
  DemoStep(
    title: 'Conclusion',
    content: 'Flutter is materially better than the alternatives.',
  ),
];

class DemoStep {
  const DemoStep({
    this.title,
    this.content,
  });

  final String title;
  final String content;
}
