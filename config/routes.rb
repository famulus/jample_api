Rails.application.routes.draw do
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  root 'jample#index'


  get 'set_current_patch/:id' => 'jample#set_current_patch'
  post 'set_current_patch_set' => 'jample#set_current_patch_set'


  get 'randomize_current_patch' => 'jample#randomize_current_patch'
  post 'set_filter/' => 'jample#set_filter'
  post 'set_current_patch_set_name/' => 'jample#set_current_patch_set_name'
  post 'duplicate_patch_set/' => 'jample#duplicate_patch_set'
  
  post 'init_16_patches' => 'jample#init_16_patches'
  post 'shuffle_unfrozen' => 'jample#shuffle_unfrozen'
  post 'init_16_patches_as_sequence' => 'jample#init_16_patches_as_sequence'
  post 'init_16_patches_as_duration_sequence' => 'jample#init_16_patches_as_duration_sequence'
  post 'expand_single_patch_to_sequence' => 'jample#expand_single_patch_to_sequence'


  post 'shrink_patch_by_one_on_the_end/' => 'jample#shrink_patch_by_one_on_the_end'
  post 'grow_patch_by_one_on_the_end/' => 'jample#grow_patch_by_one_on_the_end'
  post 'shift_sample_backward_one_slice/' => 'jample#shift_sample_backward_one_slice'
  post 'shift_sample_forward_one_slice/' => 'jample#shift_sample_forward_one_slice'
  post 'nudge_sample_start_backward_milliseconds/' => 'jample#nudge_sample_start_backward_milliseconds'
  post 'nudge_sample_start_forward_milliseconds/' => 'jample#nudge_sample_start_forward_milliseconds'
  get 'set_volume/:volume' => 'jample#set_volume'

  get 'reset' => 'jample#reset'
  get 'all_patchsets' => 'jample#all_patchsets'
  get 'all_tracks' => 'jample#all_tracks'

  get 'freeze_patch/:id/:checkbox_status' => 'jample#freeze_patch'

end
