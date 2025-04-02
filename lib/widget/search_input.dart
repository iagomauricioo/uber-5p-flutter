import 'package:flutter/material.dart';
import '../themes/CustomTheme.dart';

class SearchInput extends StatefulWidget {
  final ValueChanged<String>? onChanged;
  final VoidCallback? onTap;
  final String? hintText;

  const SearchInput({
    super.key,
    this.onChanged,
    this.onTap,
    this.hintText = 'Para onde?',
  });

  @override
  State<SearchInput> createState() => _SearchInputState();
}

class _SearchInputState extends State<SearchInput> {
  final TextEditingController _controller = TextEditingController();
  bool _showClearButton = false;

  @override
  void initState() {
    super.initState();
    _controller.addListener(_updateClearButtonVisibility);
  }

  @override
  void dispose() {
    _controller.removeListener(_updateClearButtonVisibility);
    _controller.dispose();
    super.dispose();
  }

  void _updateClearButtonVisibility() {
    setState(() {
      _showClearButton = _controller.text.isNotEmpty;
    });
    if (widget.onChanged != null) {
      widget.onChanged!(_controller.text);
    }
  }

  void _clearText() {
    _controller.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(width: 2, color: Colors.transparent),
      ),
      child: Align(
        alignment: const AlignmentDirectional(0, -1),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Container(
            width: 350,
            height: 60,
            decoration: BoxDecoration(
              color: CustomTheme.alternate,
              boxShadow: const [
                BoxShadow(
                  blurRadius: 4,
                  color: Color(0x33000000),
                  offset: Offset(0, 2),
                )
              ],
              borderRadius: BorderRadius.circular(24),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: Row(
                      children: [
                        const Icon(
                          Icons.search,
                          color: CustomTheme.primaryText,
                          size: 30,
                        ),
                        const SizedBox(width: 7),
                        Expanded(
                          child: GestureDetector(
                            onTap: widget.onTap,
                            child: AbsorbPointer(
                              absorbing: widget.onTap != null,
                              child: TextField(
                                controller: _controller,
                                decoration: InputDecoration(
                                  hintText: widget.hintText,
                                  hintStyle: const TextStyle(
                                    fontFamily: 'Inter Tight',
                                    fontSize: 18,
                                    color: CustomTheme.secondaryText,
                                    fontWeight: FontWeight.w600,
                                    letterSpacing: 0.0,
                                  ),
                                  border: InputBorder.none,
                                  contentPadding: EdgeInsets.zero,
                                  isDense: true,
                                ),
                                style: const TextStyle(
                                  fontFamily: 'Inter Tight',
                                  fontSize: 18,
                                  color: CustomTheme.primaryText,
                                  fontWeight: FontWeight.w600,
                                ),
                                onChanged: (value) {
                                  if (widget.onChanged != null) {
                                    widget.onChanged!(value);
                                  }
                                },
                              ),
                            ),
                          ),
                        ),
                        if (_showClearButton)
                          IconButton(
                            icon: const Icon(
                              Icons.clear,
                              size: 20,
                              color: CustomTheme.primaryText,
                            ),
                            onPressed: _clearText,
                          ),
                      ],
                    ),
                  ),
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 40,
                      child: VerticalDivider(
                        thickness: 1,
                        color: Colors.white12,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        // Ação para o botão "Mais tarde"
                      },
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                        child: Container(
                          width: 135,
                          height: 40,
                          decoration: BoxDecoration(
                            color: CustomTheme.secondaryBackground,
                            borderRadius: BorderRadius.circular(24),
                          ),
                          child: const Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Icon(
                                Icons.calendar_month_rounded,
                                color: CustomTheme.primaryText,
                                size: 24,
                              ),
                              Text(
                                'Mais tarde',
                                style: TextStyle(
                                  fontFamily: 'Inter Tight',
                                  color: CustomTheme.primaryText,
                                  letterSpacing: 0.0,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
