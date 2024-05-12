{{-- start editor  --}}
        <textarea id="{{ $id??'' }}" class="form-control" placeholder="{{ $placeholder??'' }}"  {{ $required ?? ''}} style="white-space: pre-line;" name="{{ ($name)??'' }}" rows ="{{ $rows ??'' }}">{{isset($value) ? $value : old($old??'')}}</textarea>
{{-- end editor  --}}
