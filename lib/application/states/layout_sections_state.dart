import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:prosol_task/domain/models/layout_sections_model.dart';

part 'layout_sections_state.freezed.dart';

@freezed
class LayoutSectionsState with _$LayoutSectionsState {
  const factory LayoutSectionsState.initial() = _LayoutSectionsInitial;
  const factory LayoutSectionsState.loading() = _LayoutSectionsLoading;
  const factory LayoutSectionsState.error() = _LayoutSectionsError;
  const factory LayoutSectionsState.loaded(
      LayoutSectionsModel? layoutSections) = _LayoutSectionsLoaded;
}
